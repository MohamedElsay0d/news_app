import "package:flutter/material.dart";

import "../widgets/NewsTile_listview.dart";
import "../widgets/categories_listview.dart";

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: homescreen());
  }
}

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "News ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              Text("Cloud",
                  style: TextStyle(
                      color: Color.fromARGB(255, 228, 199, 35),
                      fontWeight: FontWeight.bold,
                      fontSize: 25))
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 15,
              ),
            ),

            SliverToBoxAdapter(
              child: categories_listview(),
            ),

            SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),

            /* Option One--> low perfermance
            SliverToBoxAdapter(
              child : newsTile_listview()
            ) ,
            */

            /* Option Two--> high perfermance
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: 10, (context, index) => newsTile()),
            )

            */
            // it is equal to Option Two-->
            newsTile_listview()
          ],
        ));
  }
}
