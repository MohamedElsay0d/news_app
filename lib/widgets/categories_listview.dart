import "package:flutter/material.dart";

import "category_card.dart";

class categories_listview extends StatelessWidget {
  const categories_listview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (Context , i){
          return categoryCard();
        },
      )
    );
  }
}
