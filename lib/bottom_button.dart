import 'package:flutter/material.dart';
import 'themes/colors.dart';

class BottomButton extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kBottomButtonColor,
        ),
        //child: ,
      ),
    );
  }
}