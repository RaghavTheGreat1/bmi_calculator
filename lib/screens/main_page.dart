import 'package:bmi_calculator/themes/bold_text_label.dart';
import 'package:bmi_calculator/themes/customized_icon.dart';
import 'package:bmi_calculator/themes/material_card_label.dart';
import 'package:bmi_calculator/themes/constant_colors.dart';
import 'package:bmi_calculator/themes/dark_theme.dart';

import 'package:bmi_calculator/cards_and_buttons/material_card.dart';
import 'package:bmi_calculator/cards_and_buttons/tappable_material_cards.dart';
import 'package:bmi_calculator/cards_and_buttons/bottom_button.dart';
import 'package:bmi_calculator/cards_and_buttons/rounded_icon_button.dart';

import 'package:bmi_calculator/screens/result_page.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/bmi_functionality.dart';

import 'package:flutter/material.dart';

import 'about.dart';

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
  double height = 160;
  double weight = 60;
  double age = 19;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildDarkThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
          centerTitle: true,
          actions: <Widget>[
            buildAboutDev(context)
          ],
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildMaleCard(),
                buildFemaleCard(),
              ],
            ),
            buildHeightCard(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildWeightCard(),
                buildAgeCard(),
              ],
            ),
            buildBottomButton(context),
          ],
        ),
      ),
    );
  }

  BottomButton buildBottomButton(BuildContext context) {
    return BottomButton(
            displayText: 'CALCULATE',
            onUserTap: () {
              BmiFunctionality bmiCalculation = BmiFunctionality(
                height: height,
                weight: weight,
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ResultPage(
                      bmiResults: bmiCalculation.bmiCalculation(),
                      bmiInterpret: bmiCalculation.bmiInterpretation(),
                      bmiTxt: bmiCalculation.bmiResultText(),
                      bmiTxtColor: bmiCalculation.bmiResultTextColor());
                }),
              );
            },
          );
  }

  Expanded buildAgeCard() {
    return Expanded(
                child: MaterialCard(
                  materialCardColor: kMaterialCardColor,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      MaterialCardLabel(
                        labelText: 'AGE',
                        labelTextColor: Color(0xFF8D8E98),
                      ),
                      BoldTextLabel(
                        age.toStringAsFixed(0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundedIconButton(
                            icon: FontAwesomeIcons.minus,
                            onUserTap: () {
                              setState(() {
                                age > 1 ? age-- : age = 1;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundedIconButton(
                            icon: FontAwesomeIcons.plus,
                            onUserTap: () {
                              setState(() {
                                age < 150 ? age++ : age = 150;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
  }

  Expanded buildWeightCard() {
    return Expanded(
                child: MaterialCard(
                  materialCardColor: kMaterialCardColor,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MaterialCardLabel(
                        labelText: 'WEIGHT',
                        labelTextColor: Color(0xFF8D8E98),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          BoldTextLabel(
                            weight.toStringAsFixed(0),
                          ),
                          MaterialCardLabel(
                              labelText: "KG",
                              labelTextColor: Color(0xFF8D8E98))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundedIconButton(
                            icon: FontAwesomeIcons.minus,
                            onUserTap: () {
                              setState(() {
                                weight > 1 ? weight-- : weight = 1;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundedIconButton(
                            icon: FontAwesomeIcons.plus,
                            onUserTap: () {
                              setState(() {
                                weight < 635 ? weight++ : weight = 635;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
  }

  MaterialCard buildHeightCard() {
    return MaterialCard(
            materialCardColor: kMaterialCardColor,
            childCard: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialCardLabel(
                  labelText: "HEIGHT",
                  labelTextColor: Color(0xFF8D8E98),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    BoldTextLabel(
                      height.toStringAsFixed(0),
                    ),
                    Text(
                      "CM",
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    thumbColor: kThumbColor,
                    activeTrackColor: kActiveTrackColor,
                    inactiveTickMarkColor: kInactiveTrackColor,
                  ),
                  child: Slider(
                    min: 50.0,
                    max: 280.0,
                    value: height,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue;
                      });
                    },
                  ),
                ),
              ],
            ),
          );
  }

  TappableMaterialCard buildFemaleCard() {
    return TappableMaterialCard(
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
              );
  }

  TappableMaterialCard buildMaleCard() {
    return TappableMaterialCard(
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
              );
  }

  IconButton buildAboutDev(BuildContext context) {
    return IconButton(
              icon: Icon(FontAwesomeIcons.user, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutDeveloper(),
                  ),
                );
              });
  }
}
