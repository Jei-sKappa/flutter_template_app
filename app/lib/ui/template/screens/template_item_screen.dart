import 'package:app/core/bloc/bloc.dart';
import 'package:app/core/helpers/listen_for_event_failures.dart';
import 'package:app/ui/template/components/load_projects_button_component.dart';
import 'package:app/ui/template/template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_domain/template_domain.dart';

class TemplateItemScreen extends StatelessWidget {
  const TemplateItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TemplateItemBloc(templateRepository: context.read()),
      child: const TemplateItemView(),
    );
  }
}

class TemplateItemView extends StatefulWidget {
  const TemplateItemView({super.key});

  @override
  State<TemplateItemView> createState() => _TemplateItemViewState();
}

class _TemplateItemViewState extends State<TemplateItemView> {
  @override
  void initState() {
    super.initState();
    // Subscribe to items when the screen is initialized
    context.read<TemplateItemBloc>().add(
      const TemplateItemSubscriptionRequested(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocTemplateEventStatusListener<
      TemplateItemBloc,
      TemplateEvent
    >(
      listenWhen: listenForEventFailures,
      listener: (context, event, status) {
        final failure = status as TemplateFailureEventStatus;

        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(failure.exception.userMessage)));
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Template Items 2'),
          elevation: 2,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 36),
              child: LoadTemplateItemsButtonComponent(),
            ),
          ],
        ),
        body: BlocSelector<TemplateItemBloc, TemplateState, List<TemplateItem>>(
          selector: (state) => state.items,
          builder: (context, items) {
            if (items.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.inbox_outlined,
                      size: 64,
                      color: Colors.grey[400],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'No items yet',
                      style: Theme.of(
                        context,
                      ).textTheme.titleLarge?.copyWith(color: Colors.grey[600]),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Tap the + button to create your first item',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: Colors.grey[500]),
                    ),
                  ],
                ),
              );
            }

            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ItemCard(
                  item: item,
                  onEdit: () => _showEditDialog(context, item),
                  onDelete: () => _showDeleteConfirmation(context, item),
                  onToggleActive: () => _toggleItemActive(context, item),
                );
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => _showCreateDialog(context),
          icon: const Icon(Icons.add),
          label: const Text('Add Item'),
        ),
      ),
    );
  }

  void _showCreateDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder:
          (dialogContext) => ItemFormDialog(
            title: 'Create Item',
            onSave: (name, description, isActive) {
              final item = TemplateItem(
                id: DateTime.now().millisecondsSinceEpoch, // Temporary ID
                name: name,
                description: description,
                createdAt: DateTime.now(),
                isActive: isActive,
              );
              context.read<TemplateItemBloc>().add(
                TemplateItemCreationRequested(item: item),
              );
            },
          ),
    );
  }

  void _showEditDialog(BuildContext context, TemplateItem item) {
    showDialog<void>(
      context: context,
      builder:
          (dialogContext) => ItemFormDialog(
            title: 'Edit Item',
            initialName: item.name,
            initialDescription: item.description,
            initialIsActive: item.isActive,
            onSave: (name, description, isActive) {
              final updatedItem = item.copyWith(
                name: name,
                description: description,
                isActive: isActive,
              );
              context.read<TemplateItemBloc>().add(
                TemplateItemUpdateRequested(item: updatedItem),
              );
            },
          ),
    );
  }

  void _showDeleteConfirmation(BuildContext context, TemplateItem item) {
    showDialog<void>(
      context: context,
      builder:
          (dialogContext) => AlertDialog(
            title: const Text('Delete Item'),
            content: Text('Are you sure you want to delete "${item.name}"?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  context.read<TemplateItemBloc>().add(
                    TemplateItemDeletionRequested(id: item.id),
                  );
                  Navigator.of(dialogContext).pop();
                },
                style: TextButton.styleFrom(foregroundColor: Colors.red),
                child: const Text('Delete'),
              ),
            ],
          ),
    );
  }

  void _toggleItemActive(BuildContext context, TemplateItem item) {
    final updatedItem = item.copyWith(isActive: !item.isActive);
    context.read<TemplateItemBloc>().add(
      TemplateItemUpdateRequested(item: updatedItem),
    );
  }
}
