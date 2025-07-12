
import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../screens/meal_detail_screen.dart';

class FavoriteMealList extends StatelessWidget {
  const FavoriteMealList({super.key, required this.favMeals, required this.onAddToFavourite});
 final  List<Meal> favMeals;
 final void Function(Meal meal) onAddToFavourite;
  
  @override
  Widget build(BuildContext context) {
  return ListView.builder(itemCount: favMeals.length ,itemBuilder: (ctx, index){
    return ListTile(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>MealDetailScreen(meal: favMeals[index])));
      },
      leading: Image.network(favMeals[index].imageUrl),
      title: Text(favMeals[index].title),
      trailing: IconButton(onPressed: (){onAddToFavourite(favMeals[index]);}, icon: Icon(Icons.favorite)),
    );
  });
  }
}