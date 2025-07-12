
import 'package:flutter/material.dart';
import 'package:meals/widgets/meal_item.dart';

import '../models/meal.dart';

class MealsScreen extends StatelessWidget {
const MealsScreen({super.key, required this.meals, required  this.title, required this.addToFavourite});

final Function(Meal meal) addToFavourite;
final String title;
final List<Meal> meals;
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: meals.isNotEmpty ?
       ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index)=> MealItem(onAddToFavourite: addToFavourite,meal: meals[index]))
         : Center(child: Text('No registered meals for this category yet', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.onSurface),),),
    );
  }
}