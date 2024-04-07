import "package:flutter/material.dart";
import "package:news_app/models/category_model.dart";

class categoryCard extends StatelessWidget {
  final category_model category;
  const categoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
          width: 160,
          height: 110,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(category.category_image), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
              child: Text(category.category_name, style: TextStyle(color: Colors.white)))),
    );
  }
}
