import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoldTextLabel extends StatelessWidget {
  final String text;
  BoldTextLabel(
    this.text, );


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        textStyle: TextStyle(
          fontSize: 80,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
