import 'package:flutter/material.dart';
import 'themes/constant_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'material_card.dart';
import 'themes/material_card_label.dart';
import 'bold_text_label.dart';
import 'bottom_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'about.dart';

class ResultPage extends StatelessWidget {
  final String bmiResults;
  final String bmiInterpret;
  final String bmiTxt;
  final Color bmiTxtColor;

  ResultPage(
      {this.bmiInterpret, this.bmiResults, this.bmiTxt, this.bmiTxtColor});

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
            Container(
              child: BoldTextLabel(
                "Your Result",
                textSize: 40,
              ),
            ),
            MaterialCard(
              materialCardColor: kMaterialCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialCardLabel(
                      labelText: bmiTxt, labelTextColor: bmiTxtColor),
                  BoldTextLabel(bmiResults),
                  MaterialCardLabel(
                    labelText: bmiInterpret,
                    labelTextColor: Colors.white,
                  )
                ],
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
