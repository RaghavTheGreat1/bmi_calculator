import 'package:flutter/material.dart';
import 'material_card.dart';
import 'themes/colors.dart';


class TappableMaterialCard extends StatelessWidget {

  final Widget childCard;

  TappableMaterialCard({this.childCard, }); 
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: MaterialCard(materialCardColor: kMaterialCardColor, childCard: childCard,),
    );
  }
}