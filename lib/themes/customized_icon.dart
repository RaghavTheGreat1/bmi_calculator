import 'package:flutter/material.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/themes/colors.dart';

class CustomizedIcon extends StatelessWidget {
  final IconData icon;
  final double iconSize = 80;
  final Color iconColor = kIconColor;

  CustomizedIcon({
    @required this.icon,
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
