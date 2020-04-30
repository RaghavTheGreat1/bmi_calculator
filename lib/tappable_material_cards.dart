import 'package:flutter/material.dart';
import 'material_card.dart';
import 'package:bmi_calculator/themes/constant_colors.dart';


class TappableMaterialCard extends StatelessWidget {

  final Widget childCard;
  final Function onMaterialCardTap;

  TappableMaterialCard({this.childCard, this.onMaterialCardTap}); 
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onMaterialCardTap,
      child: MaterialCard(materialCardColor: kMaterialCardColor, childCard: childCard,),
    );
  }
}