import 'package:flutter/material.dart';
import 'package:sironi1/homepage.dart';
import 'package:sironi1/contactus.dart';
import 'package:sironi1/menu.dart';
import 'package:sironi1/ourstory.dart';
import 'package:sironi1/reviews.dart';
import 'package:sironi1/splashcreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> main() async {

await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: Splashscreen()
    );
  }
}