import 'dart:html' as html_5;

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolioweb/constants/socials.dart';

class Getintouch extends StatefulWidget {
  const Getintouch({super.key});

  @override
  State<Getintouch> createState() => _GetintouchState();
}

class _GetintouchState extends State<Getintouch> {

      void newurl(String link){
 html_5.AnchorElement anchorElement = html_5.AnchorElement(href: link);
    anchorElement.download = "resume.pdf"; 
    anchorElement.click();
 }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),

    decoration: BoxDecoration(
      color: Color.fromARGB(255, 30, 215, 96),
      borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
    ),),
      child: Column(
        children: [
          
           SizedBox(height: 30,),

          Text('Get in touch!',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),),

          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(int i = 0; i< Socials.length ; i++)
              InkWell(
                onTap: () { newurl(Socials[i]["link"]);},
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  color: Color.fromARGB(255, 30, 215, 96)),
                          
                  child : Socials[i]["icon"]
                ),
              ),
              

              InkWell(
                onTap: () { 
                   final String email = "katheaditya10@gmail.com";
        final String subject = "Hello!";
        final String body = "So happy to connect!";

         final String mailtoLink = "mailto:$email?subject=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(body)}";
  html_5.window.open(mailtoLink, "_self");
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  color: Color.fromARGB(255, 30, 215, 96)),
                          
                  child : Icon(Icons.mail_outline,
                  color: Colors.black,)
                ),
              )
              
            ],
          ),
           SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text('Created with ❣️ using ',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),),
            Icon(BoxIcons.bxl_flutter,
            size: 17,
            color: Colors.grey[800],)
            ],
          )
        ],
      ),
    );
  }
}