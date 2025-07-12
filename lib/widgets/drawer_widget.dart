import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key, required this.changeScreenTo});
  final void Function(String indentifier) changeScreenTo;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                colorScheme.primaryContainer,
                colorScheme.primaryContainer.withValues(alpha: 0.8)
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft
              )
            ),
            child: Row(
              children: [
                Icon(Icons.fastfood,
                size: 48,
                color: colorScheme.primary,),
                SizedBox(width: 18,),
                Text('Cooking', style: textTheme.titleLarge!.copyWith(color: colorScheme.primary),)
              ],
            )),
            ListTile(
              leading: Icon(Icons.no_food),
              title: Text('Meals', style: textTheme.titleSmall!.copyWith(
                color: colorScheme.onSurface,
                fontSize: 24
                
              ),),
              onTap: (){
                changeScreenTo('meals');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Filter', style: textTheme.titleSmall!.copyWith(
                color: colorScheme.onSurface,
                fontSize: 24
                
              ),),
              onTap: (){
                changeScreenTo('filter');
              },
            )

        ],
      )
    );
  }
}