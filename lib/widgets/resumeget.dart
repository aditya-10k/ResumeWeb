import 'dart:html' as html;

import 'package:flutter/material.dart';

class Resumeget extends StatelessWidget {
  Resumeget ({super.key});

  
  final String downloadUrl = 'https://drive.google.com/uc?export=download&id=1QorMQtvcKHwsdfCtjt_0EdQWNc6XtmAT';

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
      child: const Text(
        'My Resume',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          height: 1.5,
          color: Colors.black,
          fontSize: 28,
        ),
      ),
    );
  }
}
