import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/ui/template/bloc/template_item_bloc.dart';

class LoadTemplateItemsButtonComponent extends StatelessWidget {
  const LoadTemplateItemsButtonComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.read<TemplateItemBloc>().add(
            const TemplateItemSubscriptionRequested(),
          ),
      icon: const Icon(Icons.refresh),
    );
  }
}
