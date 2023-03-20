import 'package:flutter/material.dart';

class pizzaTile extends StatelessWidget {
  final String pizzaFlavor;
  final String pizzaPrice;
  final String imageName;
  final pizzaColor;

  const pizzaTile({
    super.key,
    required this.pizzaColor,
    required this.pizzaFlavor,
    required this.pizzaPrice,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: pizzaColor[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: pizzaColor[200],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        topRight: Radius.circular(12)),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "\$" + pizzaPrice,
                    style: TextStyle(
                        color: pizzaColor[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
            //picture
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Image.asset(imageName),
            ),
            //flavor
            Text(
              pizzaFlavor,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 25),
            //love icon and add button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                ),
                Icon(
                  Icons.add,
                  color: Colors.black,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
