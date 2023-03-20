import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class myTab extends StatelessWidget {
  final String iconPath;
  const myTab({
    super.key,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 50,
      child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.pink[50], borderRadius: BorderRadius.circular(12)),
          child: Image.asset(
            iconPath,
            color: Colors.black,
          )),
    );
  }
}
