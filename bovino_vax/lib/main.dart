import 'package:flutter/material.dart';
import 'package:floor/floor.dart';
import 'pages/mainpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //final database = await $FloorAppDatabase.databaseBuilder('bovinovax.db').addCallback(callback).build();
  //database.close;

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
