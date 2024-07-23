import 'package:flutter/material.dart';
import 'package:sironi1/beverage.dart';
import 'package:sironi1/food.dart';
import 'package:sironi1/homepage.dart';
import 'package:sironi1/register.dart'; // Ensure this import points to the correct file

class Reviews extends StatefulWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 94, 172),
        title: const Text(
          "Reviews",
          style: TextStyle(
            fontFamily: 'Genty',
            fontSize: 25,
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Center(
                  child: ClipOval(
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.transparent,
                      child: Image.asset('images/logo.gif'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: 250, // Set the desired width
                height: 80, // Set the desired height
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => Register(),
                      ),
                    );
                  },
                  child: Text(
                    "Become a Member!",
                    style: TextStyle(
                      fontSize: 20, // Adjust text size if needed
                    ),
                  ),
                  backgroundColor: Color.fromARGB(255, 136, 208, 221),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}