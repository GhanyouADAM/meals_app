
import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key, required this.meal});
  final Meal meal;
@override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Text(meal.title),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                meal.imageUrl,
                height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
              ),
              SizedBox(height: 10,),
              Text('Ingredients', style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 14,),
              for(final ingredients in meal.ingredients)
              Text(ingredients, style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurface
              ),),
               SizedBox(height: 10,),
              Text('Steps', style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 14,),
              for(final steps in meal.steps)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Text(steps, 
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface
                ),),
              ),
            ],
          ),
      ),
    );
  }
}