import 'package:flutter/material.dart';

class smoothieTile extends StatelessWidget {
  final String smoothieFlavor;
  final String smoothiePrice;
  final String imageName;
  final smoothieColor;

  const smoothieTile({
    super.key,
    required this.smoothieColor,
    required this.smoothieFlavor,
    required this.smoothiePrice,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: smoothieColor[100],
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
                    color: smoothieColor[200],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        topRight: Radius.circular(12)),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "\$" + smoothiePrice,
                    style: TextStyle(
                        color: smoothieColor[800],
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
              smoothieFlavor,
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
