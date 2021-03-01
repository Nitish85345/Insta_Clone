import 'package:flutter/material.dart';
import 'insta_home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Instagram',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.red[900],
      primaryIconTheme: IconThemeData(color: Colors.black),
      //primaryTextTheme: TextTheme(),
      ),
      //textTheme:  TextTheme(),
    home:InstagramHome() ,
  ));
}



