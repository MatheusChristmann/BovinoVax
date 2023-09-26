import 'package:flutter/material.dart';
import 'pages/mainpage.dart';

void main() async {
  runApp(const BovinoVaxApp());
}

class BovinoVaxApp extends StatelessWidget {
  const BovinoVaxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
