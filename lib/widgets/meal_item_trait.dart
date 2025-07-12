import 'package:flutter/material.dart';
class MealItemTrait extends StatelessWidget{
const MealItemTrait({super.key, required this.detailIcon, required this.detailLabel});
final IconData detailIcon;
final String detailLabel;

@override
  Widget build(BuildContext context){
    return Row(
      children: [
        Icon(detailIcon, size: 24, color: Colors.white,),
        SizedBox(width: 5,),
        Text(detailLabel, style: TextStyle(color: Colors.white),)
      ],
    );
  }
}