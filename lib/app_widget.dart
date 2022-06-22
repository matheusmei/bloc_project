import 'package:bloc_project/screens/landing_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        backgroundColor: Colors.black,
        brightness: Brightness.dark
      ),
      home: const LandingPage(),
    );
  }
}