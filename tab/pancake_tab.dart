import 'package:flutter/material.dart';

import '../util/pancake_tile.dart';

class PancakeTab extends StatelessWidget {
  List pancakes = [
    ["Blackberry", "30", Colors.blue, "lib/imagess/blackberry.png"],
    ["Cherry", "55", Colors.green, "lib/imagess/cherry.png"],
    ["Chocolate", "50", Colors.brown, "lib/imagess/chocolatepancake.png"],
    ["Strawberry", "20", Colors.red, "lib/imagess/strawberry (2).png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pancakes.length,
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: ((context, index) {
          return pancakeTile(
            pancakeFlavor: pancakes[index][0],
            pancakePrice: pancakes[index][1],
            pancakeColor: pancakes[index][2],
            imageName: pancakes[index][3],
          );
        }));
  }
}
