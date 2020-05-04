import 'package:bmi_calculator/bold_text_label.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'material_card.dart';
import 'package:bmi_calculator/themes/constant_colors.dart';
import 'tappable_material_cards.dart';
import 'bottom_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'themes/customized_icon.dart';
import 'themes/material_card_label.dart';
import 'package:bmi_calculator/rounded_icon_button.dart';
import 'result_page.dart';
import 'bmi_functionality.dart';
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
      theme: ThemeData(
        primaryColor: kPrimaryDarkThemeColor,
        scaffoldBackgroundColor: kScaffoldDarkThemeBackgroundColor,
        textTheme: GoogleFonts.openSansTextTheme(),
      ),
      home: Scaffold(
        
        appBar: AppBar(

          title: Text("BMI CALCULATOR"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                icon: Icon(FontAwesomeIcons.user, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutDeveloper(),
                    ),
                  );
                })
          ],
        ),
        body: ListView(
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
                            print(height);
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: MaterialCard(
                    materialCardColor: kMaterialCardColor,
                    childCard: Column(
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
                ),
                Expanded(
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
                )),
              ],
            ),
            BottomButton(
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
            ),
          ],
        ),
      ),
    );
  }
}
