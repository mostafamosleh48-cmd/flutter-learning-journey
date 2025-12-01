import 'package:flutter/material.dart';
import 'package:learnflutter/item_card.dart';

class RecommendationBox extends StatelessWidget {
  RecommendationBox({super.key, required this.title, required this.items});
  String? title;
  List<ItemCard> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title!),
              TextButton(
                onPressed: () {},
                child: Text("See All"),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 300,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) => items[index],
            ),
          ),
        ],
      ),
    );
  }
}
