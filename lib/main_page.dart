import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'material_card.dart';
import 'package:bmi_calculator/themes/constant_colors.dart';
import 'tappable_material_cards.dart';
import 'bottom_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'themes/customized_icon.dart';
import 'themes/material_card_label.dart';

enum Gender {
  male,
  female,
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: TappableMaterialCard(
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CustomizedIcon(
                      icon: FontAwesomeIcons.mars,
                      iconColor: selectedGender == Gender.male
                          ? kActiveLabelAndIconColor
                          : kInactiveLabelAndIconColor,
                    ),
                    MaterialCardLabel(
                      labelText: "MALE",
                      labelTextColor: selectedGender == Gender.male
                          ? kActiveLabelAndIconColor
                          : kInactiveLabelAndIconColor,
                    ),
                  ],
                ),
                onMaterialCardTap: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
              ),
            ),
            Expanded(
              child: TappableMaterialCard(
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CustomizedIcon(
                      icon: FontAwesomeIcons.venus,
                      iconColor: selectedGender == Gender.female
                          ? kActiveLabelAndIconColor
                          : kInactiveLabelAndIconColor,
                    ),
                    MaterialCardLabel(
                      labelText: "FEMALE",
                      labelTextColor: selectedGender == Gender.female
                          ? kActiveLabelAndIconColor
                          : kInactiveLabelAndIconColor,
                    ),
                  ],
                ),
                onMaterialCardTap: () {
                  setState(() {
                    selectedGender = Gender.female;
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
