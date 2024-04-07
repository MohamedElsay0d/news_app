import "package:flutter/material.dart";

import "../models/category_model.dart";
import "category_card.dart";

class categories_listview extends StatelessWidget {
  categories_listview({
    super.key,
  });

  final categories = [
    category_model(
        category_name: "Business", category_image: "assets/busines.jpeg"),
    category_model(
        category_name: "Entertaiment",
        category_image: "assets/entertaiment.avif"),
    category_model(
        category_name: "General", category_image: "assets/general.jpeg"),
    category_model(
        category_name: "Health", category_image: "assets/health.avif"),
    category_model(
        category_name: "Science", category_image: "assets/science.avif"),
    category_model(
        category_name: "Technology", category_image: "assets/technology.jpeg"),
    category_model(
        category_name: "Sports", category_image: "assets/sports.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: SizedBox(
          height: 85,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (Context, i) {
              return categoryCard(
                category: categories[i],
              );
            },
          )),
    );
  }
}
