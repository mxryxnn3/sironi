import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 94, 172),
        title: const Text(
          "Food Selection",
          style: TextStyle(
            fontFamily: 'Genty',
            fontSize: 25,
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(2)),
            Image.asset(
              'images/BURGER.png',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            Divider(),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: 400, // Adjust width as needed
                height: 50, // Adjust height as needed
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextField(
                    maxLines: null, // Allows the text field to grow with content
                    decoration: InputDecoration.collapsed(
                      hintText: "Classic Sironi Burger for Ksh.1500",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
