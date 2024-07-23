import 'package:flutter/material.dart';
import 'package:sironi1/contactus.dart';
import 'package:sironi1/menu.dart';
import 'package:sironi1/ourstory.dart';
import 'package:sironi1/reviews.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(107, 133, 219, 0.431),
        child: ListView(
          children: [
            _buildListTile(Icons.account_circle_sharp, 'Order Now!', () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => Menu(),
                ),
              );
            }),
            _buildListTile(Icons.home, 'Our Story :)', () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => OurStory(),
                ),
              );
            }),
            _buildListTile(Icons.sunny, 'Reviews', () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => Reviews(),
                ),
              );
            }),
            _buildListTile(Icons.yard_rounded, 'Contact Us', () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => ContactUs(),
                ),
              );
            }),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'SIRONI RESTAURANT',
          style: TextStyle(
            fontFamily: 'Genty',
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 26, 94, 172),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: ClipOval(
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.transparent,
                        child: Image.asset(
                          'images/logo.gif',
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Image.asset(
                    'images/hp.gif', 
                    width: 350,
                    height: 600,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Genty',
          fontSize: 25,
        ),
      ),
      onTap: onTap,
    );
  }
}
