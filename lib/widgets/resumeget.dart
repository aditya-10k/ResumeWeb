import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Resumeget extends StatelessWidget {
  Resumeget ({super.key});

  
  final String downloadUrl = 'https://drive.google.com/uc?export=download&id=1d7_pttO3wv5A_UbHWL_MEMNm3Ac6rMMG';

  void downloadFile() {
   
    html.AnchorElement anchorElement = html.AnchorElement(href: downloadUrl);
    anchorElement.download = "resume.pdf"; 
    anchorElement.click();
  }

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: downloadFile,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 30, 215, 96),
      ),
      child:  Text(
        'My Resume',
        style: GoogleFonts.lato(
          fontWeight: FontWeight.bold,
          height: 1.5,
          color: Colors.black,
          fontSize: 28,
        ),
      ),
    );
  }
}
