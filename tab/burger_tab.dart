import 'package:flutter/material.dart';

import '../util/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  List burgers = [
    ["Cheese Burger", "40", Colors.blue, "lib/imagess/cheeseburger.png"],
    ["King Beef", "45", Colors.green, "lib/imagess/kingbeef.png"],
    ["King Chicken", "35", Colors.brown, "lib/imagess/kingchicken.png"],
    ["Whopper", "50", Colors.red, "lib/imagess/whopper.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: burgers.length,
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: ((context, index) {
          return burgerTile(
            burgerFlavor: burgers[index][0],
            burgerPrice: burgers[index][1],
            burgerColor: burgers[index][2],
            imageName: burgers[index][3],
          );
        }));
  }
}
