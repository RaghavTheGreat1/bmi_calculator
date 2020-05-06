import 'package:bmi_calculator/themes/constant_colors.dart';

import 'package:flutter/material.dart';

import 'material_card.dart';


class TappableMaterialCard extends StatelessWidget {
  final Widget childCard;
  final Function onMaterialCardTap;

  TappableMaterialCard({this.childCard, this.onMaterialCardTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onMaterialCardTap,
        child: MaterialCard(
          materialCardColor: kMaterialCardColor,
          childCard: childCard,
        ),
      ),
    );
  }
}
