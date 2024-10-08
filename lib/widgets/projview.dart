import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioweb/constants/sizes.dart';
import 'package:portfolioweb/widgets/projectcard.dart';
import 'package:portfolioweb/widgets/projectcardweb.dart';

class Projview extends StatelessWidget {
  const Projview({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(context, constraints) {
        
      
      return Container(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Column(
          children: [
      
            Text(
              'My Projects',
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
                height: 1.5,
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 20,),
      
            if(constraints.maxWidth >= kMedDesktopWidth)
            Projectcardweb()
            else
            Projectcard()
          ],
        ),
      );},
    );
  }
}