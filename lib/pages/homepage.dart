import 'package:flutter/material.dart';
import 'package:portfolioweb/widgets/header.dart';
import 'package:portfolioweb/widgets/skillswidget.dart';
import 'package:portfolioweb/widgets/welcomewid.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          
          const Header(),
          const Welcomewid(),
          const SizedBox(height: 60,),
          const Skillswidget(),
        ],
      )
      
    );
  }
}