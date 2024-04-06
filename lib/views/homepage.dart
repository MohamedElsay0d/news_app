import "package:flutter/material.dart";

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
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
      
    );
  }
}
