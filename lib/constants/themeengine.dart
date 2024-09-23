import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData mytheme = ThemeData(

  primaryColor: Colors.black,
  scaffoldBackgroundColor: const Color.fromARGB(255, 17, 16, 16),



  textTheme: GoogleFonts.firaSansTextTheme().copyWith(
    bodySmall: TextStyle(color: Colors.white),  
    bodyMedium: TextStyle(color: Colors.white70),  
    bodyLarge: TextStyle(color: Colors.grey),  
    
  ),

  
  
);