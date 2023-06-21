import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      textTheme: Theme.of(context).textTheme,
      appBarTheme: AppBarTheme(
        // color: Colors.black,
        backgroundColor: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.deepPurple),
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      textTheme: Theme.of(context).textTheme,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
      ));
}
