import 'package:flutter/material.dart';
import 'package:sironi1/homepage.dart'; // Importing the necessary package

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key); // Fixed the constructor declaration

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController enterPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  bool _isObscured = true;
  bool _isConfirmObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView( // Wrap the Column with SingleChildScrollView to avoid overflow
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: firstnameController,
              decoration: InputDecoration(
                hintText: "First Name",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: lastnameController,
              decoration: InputDecoration(
                hintText: "Last Name",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: enterPasswordController,
              obscureText: _isObscured,
              decoration: InputDecoration(
                hintText: "Enter Password",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(_isObscured ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: confirmPasswordController,
              obscureText: _isConfirmObscured,
              decoration: InputDecoration(
                hintText: "Confirm Password",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(_isConfirmObscured ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _isConfirmObscured = !_isConfirmObscured;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 15),
            FloatingActionButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => HomePage(),
                  ),
                );
              },
              child: Text("Create Account"),
              backgroundColor: Color.fromARGB(255, 230, 229, 223),
            ),
            SizedBox(height: 20),
            GestureDetector( // Replaced RichText with GestureDetector
              onTap: () {
                // Action for sign up
              },
              child: Text(
                "Sign Up",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
