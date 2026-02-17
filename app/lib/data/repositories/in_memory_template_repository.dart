import 'dart:async';

import 'package:template/data/data.dart';
import 'package:template/domain/domain.dart';

class InMemoryTemplateRepository implements TemplateRepository {
  final Map<TemplateItemId, String> _items = {};
  final Map<TemplateItemId, StreamController<Result<TemplateItem>>>
      _itemControllers = {};
  final StreamController<Result<List<TemplateItem>>> _allItemsController =
      StreamController<Result<List<TemplateItem>>>.broadcast();

  @override
  Stream<Result<TemplateItem>> listen(TemplateItemId id) {
    final controller = _itemControllers.putIfAbsent(
      id,
      StreamController<Result<TemplateItem>>.broadcast,
    );

    // Emit current value if it exists
    final jsonString = _items[id];
    if (jsonString != null) {
      try {
        final item = TemplateItemMapper.fromJson(jsonString);
        controller.add(Result.ok(item));
      } on Exception catch (_) {
        controller.add(
          Result.failure(
            ParsingFailedException(jsonString),
          ),
        );
      }
    }

    return controller.stream;
  }

  @override
  Stream<Result<List<TemplateItem>>> listenAll() {
    // Emit current state
    _emitAllItems();
    return _allItemsController.stream;
  }

  @override
  Future<Result<List<TemplateItem>>> getAll() async {
    try {
      final items = _items.values.map(TemplateItemMapper.fromJson).toList();
      return Result.ok(items);
    } on Exception catch (e, st) {
      return Result.failure(
        UnknownDataException(e, st, userMessage: 'Failed to get all items: $e'),
      );
    }
  }

  @override
  Future<Result<TemplateItem?>> get(TemplateItemId id) async {
    final jsonString = _items[id];
    if (jsonString == null) {
      return const Result.ok(null);
    }

    try {
      final item = TemplateItemMapper.fromJson(jsonString);
      return Result.ok(item);
    } on Exception catch (_) {
      return Result.failure(
        ParsingFailedException(jsonString),
      );
    }
  }

  @override
  Future<Result<void>> create(TemplateItem item) async {
    try {
      final jsonString = item.toJson();
      _items[item.id] = jsonString;
      _notifyItemUpdate(item.id, item);
      _emitAllItems();
      return const Result.ok(null);
    } on Exception catch (e, st) {
      return Result.failure(
        UnknownDataException(e, st, userMessage: 'Failed to create item: $e'),
      );
    }
  }

  @override
  Future<Result<void>> update(TemplateItem item) async {
    if (!_items.containsKey(item.id)) {
      return Result.failure(ItemDoesNotExistsException(item.id));
    }

    // Simulate a delay to test the loading status
    await Future<void>.delayed(const Duration(milliseconds: 500));

    try {
      final jsonString = item.toJson();
      _items[item.id] = jsonString;
      _notifyItemUpdate(item.id, item);
      _emitAllItems();
      return const Result.ok(null);
    } on Exception catch (e, st) {
      return Result.failure(
        UnknownDataException(e, st, userMessage: 'Failed to update item: $e'),
      );
    }
  }

  @override
  Future<Result<void>> delete(TemplateItemId id) async {
    if (!_items.containsKey(id)) {
      return Result.failure(ItemDoesNotExistsException(id));
    }

    _items.remove(id);
    _notifyItemDelete(id);
    _emitAllItems();
    return const Result.ok(null);
  }

  void _notifyItemUpdate(TemplateItemId id, TemplateItem item) {
    final controller = _itemControllers[id];
    if (controller != null && !controller.isClosed) {
      controller.add(Result.ok(item));
    }
  }

  void _notifyItemDelete(TemplateItemId id) {
    final controller = _itemControllers[id];
    if (controller != null && !controller.isClosed) {
      controller.add(
        Result.failure(TriedAccessingDisposedControllerException()),
      );
    }
  }

  void _emitAllItems() {
    try {
      final items = _items.values.map(TemplateItemMapper.fromJson).toList();
      _allItemsController.add(Result.ok(items));
    } on Exception catch (e, st) {
      _allItemsController.add(
        Result.failure(
          UnknownDataException(
            e,
            st,
            userMessage: 'Failed to emit all items: $e',
          ),
        ),
      );
    }
  }

  void dispose() {
    for (final controller in _itemControllers.values) {
      controller.close();
    }
    _itemControllers.clear();
    _allItemsController.close();
  }
}
