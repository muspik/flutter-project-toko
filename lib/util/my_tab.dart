import 'package:flutter/material.dart';

class Mytabs extends StatelessWidget {
  final String iconPath;

  const Mytabs({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 228, 162, 46),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset(
          iconPath,
        ),
      ),
    );
  }
}
