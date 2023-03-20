import 'package:flutter/material.dart';

import '../util/smoothie_tile.dart';

class smoothieTab extends StatelessWidget {
  List smoothies = [
    ["Blueberry", "15", Colors.blue, "lib/imagess/blueberry.png"],
    ["Watermelon", "30", Colors.green, "lib/imagess/watermelon.png"],
    ["Coconut", "20", Colors.brown, "lib/imagess/coconut.png"],
    ["Strawberry", "20", Colors.red, "lib/imagess/strawberrysnoothie.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: smoothies.length,
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: ((context, index) {
          return smoothieTile(
            smoothieFlavor: smoothies[index][0],
            smoothiePrice: smoothies[index][1],
            smoothieColor: smoothies[index][2],
            imageName: smoothies[index][3],
          );
        }));
  }
}
