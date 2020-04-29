import 'package:flutter/material.dart';

class MaterialCard extends StatelessWidget {
  final Color materialCardColor;
  final Widget childCard;

  MaterialCard({@required this.materialCardColor, this.childCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: childCard,
      width: double.infinity,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: materialCardColor,
      ),
    );
  }
}