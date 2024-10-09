// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../../../../core/global/custom_colors.dart';
import '../../../../core/ui/dialogs/dialog_create_ingredient_used.dart';
import '../../../../models/ingredient_used.dart';
import 'ingredient_info_container.dart';

class IngredientUsedContainer extends StatefulWidget {
  final Function(List<IngredientUsed>) onIngredientsChanged;
  final List<IngredientUsed> ingredientsUsed;

  const IngredientUsedContainer({
    Key? key,
    required this.onIngredientsChanged,
    this.ingredientsUsed = const [],
  }) : super(key: key);

  @override
  _IngredientUsedContainerState createState() => _IngredientUsedContainerState();
}

class _IngredientUsedContainerState extends State<IngredientUsedContainer> {
  late List<IngredientUsed> ingredientsUsed;

  @override
  void initState() {
    super.initState();
    ingredientsUsed = widget.ingredientsUsed;
  }

  void addIngredientUsed(IngredientUsed newIngredient) {
    setState(() {
      ingredientsUsed.add(newIngredient);
    });
    widget.onIngredientsChanged(ingredientsUsed);
  }

  void removeIngredientUsed(IngredientUsed ingredient) {
    setState(() {
      ingredientsUsed.remove(ingredient);
    });
    widget.onIngredientsChanged(ingredientsUsed);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: CustomColors.mint,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: CustomColors.just_regular_brown.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 6,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints(
            minHeight: 250,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Ingredientes Utilizados',
                  style: TextStyle(
                    fontSize: 18,
                    color: CustomColors.sweet_cream,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              if (ingredientsUsed.isNotEmpty)
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: ingredientsUsed.map((ingredient) {
                    return IngredientInfoContainer(
                      ingredientUsed: ingredient,
                      onRemove: () => removeIngredientUsed(ingredient),
                    );
                  }).toList(),
                ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        Positioned(
          bottom: 16,
          right: 16,
          child: FloatingActionButton(
            onPressed: () async {
              final result = await showDialog<IngredientUsed>(
                context: context,
                builder: (BuildContext context) {
                  return const DialogCreateIngredientUsed();
                },
              );

              if (result != null) {
                addIngredientUsed(result);
              }
            },
            backgroundColor: CustomColors.sweet_cream,
            child: const Icon(Icons.add, size: 40, color: CustomColors.mint),
          ),
        ),
      ],
    );
  }
}

