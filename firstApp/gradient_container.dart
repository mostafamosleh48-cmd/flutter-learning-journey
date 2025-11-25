import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1, color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: AlignmentGeometry.bottomCenter,
          end: AlignmentGeometry.topCenter,
        ),
      ),
      child: Center(
        child: Text(
          "Hi , There",
          style: TextStyle(fontSize: 26, color: Colors.white),
        ),
      ),
    );
  }
}
