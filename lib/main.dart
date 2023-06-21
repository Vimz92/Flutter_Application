import 'package:flutter/material.dart';
import 'package:master_flutter_application/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: ScreenHome(),
    );
  }
}
