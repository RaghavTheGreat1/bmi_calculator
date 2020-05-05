import 'package:flutter/material.dart';

class MaterialCard extends StatelessWidget {
  final Color materialCardColor;
  final childCard;

  MaterialCard({@required this.materialCardColor, this.childCard});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 210, width: 175.5),
        child: childCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: materialCardColor,
        ),
      );
  }
}