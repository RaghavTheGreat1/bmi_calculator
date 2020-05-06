import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

class BoldTextLabel extends StatelessWidget {
  final String text;
  final double textSize;
  BoldTextLabel(
    this.text, {
    this.textSize,
  });

  

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        textStyle: TextStyle(
          fontSize: textSize == null ? 80.0 : textSize,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
