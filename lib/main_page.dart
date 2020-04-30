import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'material_card.dart';
import 'themes/colors.dart';
import 'tappable_material_cards.dart';
import 'bottom_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                      Icon(
                        FontAwesomeIcons.mars,
                        color: kIconColor,
                        size: 80,
                      ),
                      Text(
                        "MALE",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: TappableMaterialCard(
                childCard: Center(
                  child: Column(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.venus,
                        color: kIconColor,
                        size: 80,
                      ),
                      Text(
                        "FEMALE",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
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
