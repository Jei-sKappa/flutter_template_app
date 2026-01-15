import 'dart:async';
import 'dart:math';

import 'package:template_domain/template_domain.dart';
import 'package:template_fake_data/template_fake_data.dart';

class FakeTemplateRepository implements TemplateRepository {
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
      } on Exception catch (e) {
        controller.add(
          Result.failure(
            TemplateUnknownException(e, 'Failed to parse item: $e'),
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
    } on Exception catch (e) {
      return Result.failure(
        TemplateUnknownException(e, 'Failed to get all items: $e'),
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
    } on Exception catch (e) {
      return Result.failure(
        TemplateUnknownException(e, 'Failed to parse item: $e'),
      );
    }
  }

  @override
  Future<Result<void>> create(TemplateItem item) async {
    if (Random().nextBool()) {
      return const Result.failure(
        TemplateUnknownException(
          'Failed to create item: DEBUG_MODE',
          'Failed to create item: DEBUG_MODE',
        ),
      );
    }

    try {
      final jsonString = item.toJson();
      _items[item.id] = jsonString;
      _notifyItemUpdate(item.id, item);
      _emitAllItems();
      return const Result.ok(null);
    } on Exception catch (e) {
      return Result.failure(
        TemplateUnknownException(e, 'Failed to create item: $e'),
      );
    }
  }

  @override
  Future<Result<void>> update(TemplateItem item) async {
    if (Random().nextBool()) {
      return const Result.failure(
        TemplateUnknownException(
          'Failed to update item: DEBUG_MODE',
          'Failed to update item: DEBUG_MODE',
        ),
      );
    }

    if (!_items.containsKey(item.id)) {
      return Result.failure(TemplateItemDoesNotExistsException(item.id));
    }

    try {
      final jsonString = item.toJson();
      _items[item.id] = jsonString;
      _notifyItemUpdate(item.id, item);
      _emitAllItems();
      return const Result.ok(null);
    } on Exception catch (e) {
      return Result.failure(
        TemplateUnknownException(e, 'Failed to update item: $e'),
      );
    }
  }

  @override
  Future<Result<void>> delete(TemplateItemId id) async {
    if (Random().nextBool()) {
      return const Result.failure(
        TemplateUnknownException(
          'Failed to delete item: DEBUG_MODE',
          'Failed to delete item: DEBUG_MODE',
        ),
      );
    }

    if (!_items.containsKey(id)) {
      return Result.failure(TemplateItemDoesNotExistsException(id));
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
        const Result.failure(TriedAccessingDisposedControllerException()),
      );
    }
  }

  void _emitAllItems() {
    try {
      final items = _items.values.map(TemplateItemMapper.fromJson).toList();
      _allItemsController.add(Result.ok(items));
    } on Exception catch (e) {
      _allItemsController.add(
        Result.failure(
          TemplateUnknownException(e, 'Failed to get all items: $e'),
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
