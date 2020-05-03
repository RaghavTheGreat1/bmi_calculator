import 'package:flutter/material.dart';
import 'themes/constant_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'material_card.dart';
import 'themes/material_card_label.dart';
import 'bold_text_label.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {
  final String bmiResults;
  final String bmiInterpret;
  final String bmiTxt;

  ResultPage({this.bmiInterpret, this.bmiResults, this.bmiTxt,});

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
          title: Text(
            "BMI CALCULATOR",
            style: GoogleFonts.openSans(
              textStyle: TextStyle(),
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Text(
                "Your Result",
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: MaterialCard(
                materialCardColor: kMaterialCardColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MaterialCardLabel(labelText: bmiTxt, labelTextColor: Colors.white),
                    BoldTextLabel(bmiResults),
                    MaterialCardLabel(labelText: bmiInterpret, labelTextColor: Colors.white)
                  ],
                ),
              ),
            ),
            BottomButton(
              displayText: "RE-CALCULATE",
              onUserTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
