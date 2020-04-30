import 'package:flutter/material.dart';
import 'material_card.dart';
import 'themes/colors.dart';

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
              child: MaterialCard(materialCardColor: kMaterialCardColor,),
            ),
            Expanded(
              child: MaterialCard(materialCardColor: kMaterialCardColor,),
            ),
          ],
        ),
        Expanded(
          child: MaterialCard(materialCardColor: kMaterialCardColor,),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: MaterialCard(materialCardColor: kMaterialCardColor,),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: MaterialCard(materialCardColor: kMaterialCardColor, ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}


