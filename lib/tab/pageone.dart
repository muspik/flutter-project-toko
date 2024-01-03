import 'package:flutter/material.dart';
import '../util/OneTile.dart';

class PageOne extends StatelessWidget {
  final List OneTab = [
    ["Formal Shoe", "100", Colors.blue, "lib/images/sneakers.png"],
    [
      "Formal Shoe",
      "100",
      const Color.fromARGB(255, 33, 243, 51),
      "lib/images/sneakers 2.png"
    ],
    [
      "Formal Shoe",
      "100",
      const Color.fromARGB(255, 243, 33, 240),
      "lib/images/mens-shoes.png"
    ],
    [
      "Formal Shoe",
      "100",
      const Color.fromARGB(255, 243, 33, 58),
      "lib/images/running-shoe.png"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: OneTab.length,
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {
          return OneTile(
            One: OneTab[index][0],
            OnePrice: OneTab[index][1],
            OneColor: OneTab[index][2],
            imageName: OneTab[index][3],
          );
        });
  }
}
