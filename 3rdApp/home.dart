import 'package:flutter/material.dart';
import 'package:learnflutter/categories.dart';
import 'package:learnflutter/item_card.dart';
import 'package:learnflutter/recommendation_box.dart';
import 'package:learnflutter/search_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(
              Icons.location_on,
              color: Colors.blue,
            ),
            Text(
              "Tokyo,Japan",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Colors.grey.shade600,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SearchField(),
              Categories(),
              SizedBox(
                height: 20,
              ),
              RecommendationBox(
                title: "Recommended",
                items: [
                  ItemCard(
                    imageUrl: "https://img.jamesedition.com/listing_images/2023/12/07/15/18/43/45819d2e-d25e-40d8-9380-ac28fa73e418/je/1100xxs.jpg",
                    title: "Stunning Castle",
                    price: "12 M\$",
                  ),
                  ItemCard(
                    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDv8t91NownC1kVpVC9uM1VHFe7ZdAw-z0jw&s",
                    title: "Blue Jeans villa",
                    price: "900 K\$",
                  ),
                  ItemCard(
                    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1-un4wGXhmr3WPthkjeds79pdkrHfqfh59A&s",
                    title: "White House",
                    price: "150 K\$",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey.shade600,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: "Messages",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
