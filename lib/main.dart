import 'package:flutter/material.dart';
import 'package:portfolioweb/constants/themeengine.dart';
import 'package:portfolioweb/pages/homepage.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: mytheme,
      home: Homepage(),
    );
  }
}
