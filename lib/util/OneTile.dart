import 'package:flutter/material.dart';

class OneTile extends StatelessWidget {
  final String One;
  final String OnePrice;
  final OneColor;
  final String imageName;

  final double borderRadius = 12;

  const OneTile(
      {super.key,
      required this.One,
      required this.OnePrice,
      required this.OneColor,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            color: Color.fromARGB(255, 197, 194, 194)),
        child: Column(
          children: [
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 189, 188, 188),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    ),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    '\$$OnePrice',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),

            //gambar sepatu
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 14),
              child: Image.asset(imageName),
            ),

            //namasepatu
            Text(
              One,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Flatshoes',
              style: TextStyle(color: Colors.grey[600]),
            ),

            //love icon
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //love icon
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),

                  Icon(
                    Icons.add,
                    color: Colors.grey[800],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
