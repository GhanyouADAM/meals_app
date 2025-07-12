import 'package:flutter/material.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'package:meals/widgets/meal_item_trait.dart';
import 'package:transparent_image/transparent_image.dart';

import '../models/meal.dart';


class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal, required this.onAddToFavourite});
  final void Function(Meal meal) onAddToFavourite;
 final  bool isFavorite = false;
  final Meal meal;
  void _navigateToMealDetail(context, meal){
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => MealDetailScreen(meal: meal)));
  }
  String get upperComplexity => meal.complexity.name[0].toUpperCase() + meal.complexity.name.substring(1);
    String get upperAffordability => meal.affordability.name[0].toUpperCase() + meal.affordability.name.substring(1);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: () {
          _navigateToMealDetail(context, meal);
        },
        child: Stack(
          children: [
            FadeInImage(
              
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(meal.imageUrl)),
                Positioned(
                  right: 0,
                  top: 0,
                  child: IconButton(onPressed: (){
                    onAddToFavourite(meal);
                  }, icon: Icon(Icons.favorite_outline))),
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                    color: Colors.black54,
                    child: Column(
                      children: [
                        Text(
                          meal.title,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onSurface),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MealItemTrait(detailIcon: Icons.lock_clock, detailLabel: '${meal.duration} min'),
                            SizedBox(width: 20,),
                            MealItemTrait(detailIcon: Icons.work, detailLabel: upperComplexity ),
                         SizedBox(width: 20,),
                            MealItemTrait(detailIcon: Icons.paid_rounded, detailLabel: upperAffordability)
                          ],
                        ),
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
