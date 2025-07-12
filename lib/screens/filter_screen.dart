import 'package:flutter/material.dart';

enum Filter {
  gluttenFree,
  lactoseFree,
  vegetarian,
  vegan
}

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key, required this.filterState});
  final Map<Filter, bool> filterState;
  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _isGluttenFreeFilterSet = false;
  bool _isLactoseFreeFilterSet = false;
  bool _isVegetarianFilterSet = false;
  bool _isVeganFilterSet  = false;
  @override
  void initState() {
    _isGluttenFreeFilterSet = widget.filterState[Filter.gluttenFree]!;
    _isLactoseFreeFilterSet = widget.filterState[Filter.lactoseFree]!;
    _isVegetarianFilterSet = widget.filterState[Filter.vegetarian]!;
    _isVeganFilterSet = widget.filterState[Filter.vegan]!;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
       final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters', style: textTheme.titleLarge!.copyWith(color: colorScheme.onSurface),),
      ),
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) return;
          Navigator.of(context).pop({
            Filter.gluttenFree : _isGluttenFreeFilterSet,
            Filter.lactoseFree: _isLactoseFreeFilterSet,
            Filter.vegetarian : _isVegetarianFilterSet,
            Filter.vegan : _isVeganFilterSet
          });
        },
        child: Column(
          children: [
            SwitchListTile(value: _isGluttenFreeFilterSet, onChanged: (setGluttenFreeFilter){
              setState(() {
                _isGluttenFreeFilterSet = setGluttenFreeFilter;
              });
            },
            title: Text('Glutten-free', style: textTheme.titleLarge!.copyWith(color: colorScheme.onSurface),),
            subtitle: Text('Only include glutten-free meals', style: textTheme.labelSmall!.copyWith(color: colorScheme.onSurface),),
            contentPadding: EdgeInsets.only(left: 34, right: 22),
            activeColor: colorScheme.tertiary,
            ),
            SwitchListTile(value: _isLactoseFreeFilterSet, onChanged: (setLactoseFilter){
              setState(() {
                _isLactoseFreeFilterSet = setLactoseFilter;
              });
            },
            title: Text('Lactose-free', style: textTheme.titleLarge!.copyWith(color: colorScheme.onSurface),),
            subtitle: Text('Only include lactose-free meals', style: textTheme.labelSmall!.copyWith(color: colorScheme.onSurface),),
            contentPadding: EdgeInsets.only(left: 34, right: 22),
            activeColor: colorScheme.tertiary,
            ),
            SwitchListTile(value: _isVegetarianFilterSet, onChanged: (setVegetarianFilter){
              setState(() {
                _isVegetarianFilterSet = setVegetarianFilter;
              });
            },
            title: Text('Vegetarian', style: textTheme.titleLarge!.copyWith(color: colorScheme.onSurface),),
            subtitle: Text('Only include Vegetarian meals', style: textTheme.labelSmall!.copyWith(color: colorScheme.onSurface),),
            contentPadding: EdgeInsets.only(left: 34, right: 22),
            activeColor: colorScheme.tertiary,
            ),
            SwitchListTile(value: _isVeganFilterSet, onChanged: (setVeganFilter){
              setState(() {
                _isVeganFilterSet = setVeganFilter;
              });
            },
            title: Text('Vegan', style: textTheme.titleLarge!.copyWith(color: colorScheme.onSurface),),
            subtitle: Text('Only include vegan meals', style: textTheme.labelSmall!.copyWith(color: colorScheme.onSurface),),
            contentPadding: EdgeInsets.only(left: 34, right: 22),
            activeColor: colorScheme.tertiary,
            )
          ],
        ),
      ),
    );
  }
}