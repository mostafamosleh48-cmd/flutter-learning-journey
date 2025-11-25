import 'package:flutter/material.dart'; 
import 'package:learnflutter/gradient_container.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GradientContainer(const Color.fromARGB(161, 186, 164, 247), const Color.fromARGB(255, 22, 6, 94)));
  }
}