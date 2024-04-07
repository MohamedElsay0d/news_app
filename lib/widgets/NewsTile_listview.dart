import "package:flutter/material.dart";
import "package:news_app/widgets/NewsTile.dart";

class newsTile_listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        /* For Option One in CustomScrollView -->
    ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 9,
        itemBuilder: (context, i) {
          return newsTile();
        });
    */

        SliverList(
      delegate: SliverChildBuilderDelegate(
          childCount: 10, (context, index) => newsTile()),
    );
  }
}
