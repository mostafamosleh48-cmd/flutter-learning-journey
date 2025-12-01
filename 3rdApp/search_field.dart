import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hint: Text("Search"),
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.search),
        suffixIcon: Icon(Icons.filter_alt_outlined),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
