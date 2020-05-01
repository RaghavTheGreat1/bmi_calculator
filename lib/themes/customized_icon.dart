import 'package:flutter/material.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:bmi_calculator/themes/constant_colors.dart';

class CustomizedIcon extends StatelessWidget {
  final IconData icon;
  final double iconSize = 80;
  final Color iconColor;

  CustomizedIcon({
    @required this.icon,
    @required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: iconColor,
      size: iconSize,
    );
  }
}
