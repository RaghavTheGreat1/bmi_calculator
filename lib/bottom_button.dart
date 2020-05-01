import 'package:flutter/material.dart';
import 'package:bmi_calculator/themes/constant_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomButton extends StatelessWidget {
  final String displayText;
  final Function onUserTap; 

  BottomButton({this.displayText, this.onUserTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onUserTap,
      child: Container(
        padding: EdgeInsets.all(20),
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kBottomButtonColor,
        ),
        child: Text(
          displayText,
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
              letterSpacing: 2.5,
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
      ),
    );
  }
}