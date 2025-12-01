import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
  });

  final String imageUrl;
  final String title;
  final String price;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: [
                Image.network(
                  imageUrl,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Icon(Icons.favorite, color: Colors.red.shade400),
                ),
              ],
            ),
          ),

          // Title
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Price
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "\$$price",
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          const SizedBox(height: 6), 
          Row(
            children: [
              Icon(Icons.location_on), 
              Text("USA,Alabama")
            ],
          ),

        ],
      ),
    );
  }
}
