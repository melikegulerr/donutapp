import 'package:flutter/material.dart';

import '../util/pizza_tile.dart';

class PizzaTab extends StatelessWidget {
  List pizzas = [
    ["Gennaro", "60", Colors.blue, "lib/imagess/gennaro.png"],
    ["Margarita", "72", Colors.green, "lib/imagess/margarita.png"],
    ["Pepperoni", "35", Colors.brown, "lib/imagess/pepperoni.png"],
    ["Supreme", "50", Colors.red, "lib/imagess/supreme.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pizzas.length,
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: ((context, index) {
          return pizzaTile(
            pizzaFlavor: pizzas[index][0],
            pizzaPrice: pizzas[index][1],
            pizzaColor: pizzas[index][2],
            imageName: pizzas[index][3],
          );
        }));
  }
}
