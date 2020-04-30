import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'material_card.dart';
import 'package:bmi_calculator/themes/constant_colors.dart';
import 'tappable_material_cards.dart';
import 'bottom_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'themes/customized_icon.dart';
import 'themes/material_card_label.dart';
import 'themes/variable_colors.dart';

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
              child: TappableMaterialCard(
                childCard: Center(
                  child: Column(
                    children: <Widget>[
                      CustomizedIcon(
                        icon: FontAwesomeIcons.mars,
                      ),
                      MaterialCardLabel(
                        labelText: "MALE",
                      ),
                    ],
                  ),
                ),
                onMaterialCardTap: () {
                  setState(() {
                    materialCardLabelTextColor == kInactiveMaterialCardLabelTextColor ? materialCardLabelTextColor = kActiveMaterialCardLabelTextColor : materialCardLabelTextColor = kInactiveMaterialCardLabelTextColor;
                  });
                },
              ),
            ),
            Expanded(
              child: TappableMaterialCard(
                childCard: Center(
                  child: Column(
                    children: <Widget>[
                      CustomizedIcon(
                        icon: FontAwesomeIcons.venus,
                      ),
                      MaterialCardLabel(
                        labelText: "FEMALE",
                      ),
                    ],
                  ),
                ),
                onMaterialCardTap: () {
                  setState(() {
                    materialCardLabelTextColor == kInactiveMaterialCardLabelTextColor ? materialCardLabelTextColor = kActiveMaterialCardLabelTextColor : materialCardLabelTextColor = kInactiveMaterialCardLabelTextColor;
                  });
                },
              ),
            ),
          ],
        ),
        Expanded(
          child: MaterialCard(
            materialCardColor: kMaterialCardColor,
          ),
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
        BottomButton(),
      ],
    );
  }
}
