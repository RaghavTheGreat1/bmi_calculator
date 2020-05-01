import 'package:flutter/material.dart';
import 'themes/constant_colors.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final Function onUserTap;
  RoundedIconButton({@required this.icon, @required this.onUserTap});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints(
        minHeight: 56.0,
        minWidth: 56.0,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
      shape: CircleBorder(),
      onPressed: onUserTap,
      fillColor: kMaterialButtonColor,
    );
  }
}