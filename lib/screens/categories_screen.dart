import 'package:flutter/material.dart';
import 'package:meals/data/mock_data.dart';
import 'package:meals/screens/meals_screen.dart';
import 'package:meals/widgets/category_grid_item.dart';

import '../models/category.dart';
import '../models/meal.dart';


class CategoriesScreen extends StatelessWidget {
  const  CategoriesScreen({super.key, required this.onFetchingMeal, required this.availableMeals});
  final void Function(Meal) onFetchingMeal;
  final List<Meal> availableMeals;
  void _selectedCategory(BuildContext context, Category category, void Function(Meal) fetchFavoriteMeal){
   
    final sortedMeal=availableMeals.where((meal)=> meal.categories.contains(category.id)).toList();
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> MealsScreen(addToFavourite: fetchFavoriteMeal,meals: sortedMeal, title: category.title)));
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Pick your meal'),
        titleTextStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
          color: Theme.of(context).colorScheme.onSurface
        ),
      ),

      body: GridView(
        padding: EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //mainAxisExtent: 50,
          childAspectRatio: 1.7,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2
          ),
          children: [
              for(final category in MockData().dummyCategories)
              CategoryGridItem(onSelectedCategory: (){
                
                _selectedCategory(context, category, onFetchingMeal);
              },category: category)
          ],
          ),
    );
  }
}