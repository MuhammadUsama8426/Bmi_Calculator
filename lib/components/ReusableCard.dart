import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key,
      required this.colour,
      required this.cardChild,
      required this.onPress});
  final Color colour;
  final Widget cardChild;
  final VoidCallback? onPress; // Changed to VoidCallback
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress, // Properly call the onPress function
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
