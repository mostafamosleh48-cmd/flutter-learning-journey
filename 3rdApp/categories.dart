import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          categoryButton(Icons.villa, "Villas"),
          categoryButton(Icons.house_rounded, "Houses"),
          categoryButton(Icons.apartment, "Apartments"),
          categoryButton(Icons.castle_rounded, "Castles"),
        ],
      ),
    );
  }
}

Widget categoryButton(IconData icon, String? text) {
  return Container(
    height: 80,
    width: 80,
    margin: EdgeInsets.all(16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.grey.shade400),
    ),

    child: InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 32,
            color: Colors.blue,
          ),
          Text("$text"),
        ],
      ),
    ),
  );
}
