import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

class DonutTab extends StatelessWidget {
  // list of donuts
  List donuts = [
    //donutFlavor,donutPrice,donutColor,imageName
    ["Ice Cream", "36", Colors.blue, "lib/imagess/icecream.png"],
    ["Grape Ade", "24", Colors.green, "lib/imagess/grape.png"],
    ["Chocolate", "48", Colors.brown, "lib/imagess/chocolate.png"],
    ["Strawberry", "12", Colors.red, "lib/imagess/strawberry.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donuts.length,
      padding: EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: ((context, index) {
        return donutTile(
          donutFlavor: donuts[index][0],
          donutPrice: donuts[index][1],
          donutColor: donuts[index][2],
          imageName: donuts[index][3],
        );
      }),
    );
  }
}
