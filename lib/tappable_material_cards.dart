import 'package:flutter/material.dart';
import 'material_card.dart';
import 'themes/colors.dart';


class TappableMaterialCard extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: MaterialCard(materialCardColor: kMaterialCardColor, ),
    );
  }
}