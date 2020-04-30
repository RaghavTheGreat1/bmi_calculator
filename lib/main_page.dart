import 'package:flutter/material.dart';
import 'material_card.dart';
import 'themes/colors.dart';
import 'tappable_material_cards.dart';







class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: TappableMaterialCard(),
            ),
            Expanded(
              child: TappableMaterialCard(),
            ),
          ],
        ),
        Expanded(
          child: MaterialCard(materialCardColor: kMaterialCardColor,),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: TappableMaterialCard(),
            ),
            Expanded(
              child: TappableMaterialCard(),
            ),
          ],
        ),
      ],
    );
  }
}




