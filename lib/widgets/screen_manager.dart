
import 'package:flutter/material.dart';
import 'package:meals/data/mock_data.dart';

import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/favorites_meals_screen.dart';
import 'package:meals/screens/filter_screen.dart';
import 'package:meals/widgets/drawer_widget.dart';

import '../models/meal.dart';
 Map<Filter, bool> defaultSelection= {
  Filter.gluttenFree : false,
  Filter.lactoseFree : false,
  Filter.vegetarian : false,
  Filter.vegan : false
};
class ScreenManager extends StatefulWidget {
 const ScreenManager({super.key});

  @override
  State<ScreenManager> createState() => _ScreenMAnagerState();
}

class _ScreenMAnagerState extends State<ScreenManager> {
  int currentIndex = 0;
  List<Meal> fav = [];
  Map<Filter, bool> _selectedFilters = {};
void  addMealToFavorite(Meal meal){
    final doesContainMeal = fav.indexWhere((element)=> element.id == meal.id);
    if (doesContainMeal == 0) {
      setState(() {
        fav.remove(meal);
      });
      return;
    }else{
     setState(() {
       fav.add(meal);
    
     });
    }
 
    
  }
  List<Widget> mainContent = [
  ];
  @override
  void initState() {
    _selectedFilters = defaultSelection;
    final List<Meal> availableMeals = MockData().dummyMeals.where((meal){
      if (_selectedFilters[Filter.gluttenFree]! && !meal.isGlutenFree) {
        return false;
      }
      if (_selectedFilters[Filter.lactoseFree]! && !meal.isLactoseFree) {
        return false;
      }
      if (_selectedFilters[Filter.vegetarian]! && !meal.isVegetarian) {
        return false;
      }
      if (_selectedFilters[Filter.vegan]! && !meal.isVegan) {
        return false;
      }
      return true;
    }).toList();
    mainContent = [
    CategoriesScreen(onFetchingMeal: addMealToFavorite, availableMeals: availableMeals,),
    FavoritesMealsScreen(favorites: fav, onAddToFavourite: addMealToFavorite,)
    ];
    super.initState();
  }

  void onSelectTab(int index){
    setState(() {
      currentIndex = index;
    });
  }
  void changeScreenTo(String identifer) async{
    Navigator.pop(context);
    if (identifer == 'filter') {
    final result = await  Navigator.of(context).push<Map<Filter, bool>>(MaterialPageRoute(builder: (ctx)=> FilterScreen(filterState: _selectedFilters,)));
    
    setState(() {
       _selectedFilters = result ?? defaultSelection;
    });
    }
    
  }
@override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerWidget(changeScreenTo: changeScreenTo,),
      body: mainContent[currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: onSelectTab,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Categories'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Favorites')
        ])
    );
  }
}