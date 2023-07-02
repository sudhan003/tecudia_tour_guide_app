import 'package:flutter/material.dart';
import 'package:tecudia_tour_guide_app/Screens/details_screen.dart';
import 'package:tecudia_tour_guide_app/Screens/home_screen.dart';
import 'package:tecudia_tour_guide_app/Screens/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
