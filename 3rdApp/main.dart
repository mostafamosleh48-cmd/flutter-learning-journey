import 'package:flutter/material.dart';
import 'package:learnflutter/home.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: false
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}
