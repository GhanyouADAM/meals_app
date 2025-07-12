
import 'package:flutter/material.dart';

import 'package:meals/widgets/favorite_meal_list.dart';

import '../models/meal.dart';

class FavoritesMealsScreen extends StatelessWidget {
  const FavoritesMealsScreen({super.key, required this.favorites, required this.onAddToFavourite});
  final List<Meal> favorites;
  final void Function(Meal meal) onAddToFavourite;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Favorites'),
      ),
    body: favorites.isEmpty ? Center(child: Text('No Favorites meals found', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.onSurface),),): FavoriteMealList(favMeals: favorites, onAddToFavourite: onAddToFavourite,)
    );
  }
}