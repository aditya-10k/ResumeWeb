import 'package:flutter/material.dart';
import 'package:portfolioweb/constants/sizes.dart';
import 'package:portfolioweb/widgets/getintouch.dart';
import 'package:portfolioweb/widgets/header.dart';
import 'package:portfolioweb/widgets/projview.dart';
import 'package:portfolioweb/widgets/skillswiddesk.dart';
import 'package:portfolioweb/widgets/skillswidget.dart';
import 'package:portfolioweb/widgets/welcomewid.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

//final constraints = MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              
              const Header(),

              const SizedBox(height: 50,),

              const Welcomewid(),

              const SizedBox(height: 150,),
              
              if(constraints.maxWidth >= kMedDesktopWidth)
              const Skillswiddesk()
              else
              const Skillswidget(),

              SizedBox(height: 40,),
              
              const Projview(),

              SizedBox(height: 40,),

              const Getintouch(),
            ],
          )
          
        );
      }
    );
  }
}