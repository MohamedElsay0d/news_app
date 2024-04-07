import "package:flutter/material.dart";

class categoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
          width: 160,
          height: 110,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/technology.jpeg"),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
              child:
                  Text("Technology", style: TextStyle(color: Colors.white)))),
    );
  }
}
