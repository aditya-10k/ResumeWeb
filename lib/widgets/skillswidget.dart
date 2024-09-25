import 'package:flutter/material.dart';
import 'package:portfolioweb/constants/skillicons.dart';

class Skillswidget extends StatelessWidget {
  const Skillswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 30, 215, 96),
        borderRadius: BorderRadius.circular(20)
      ),
      margin: const EdgeInsets.fromLTRB(40, 0, 40, 10),
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            child:  Column(
              children: [
                Text(
                            'My Skills',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                              color: Colors.black,
                              fontSize: 25
                            ),
                          ),
                        
                Wrap(
                  children: [
                    for(int i = 0 ; i < skills.length ; i++)
                   Container(
                    padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
                     child: Chip(
                       backgroundColor: Colors.black,
                        shape: StadiumBorder(
                        side: BorderSide(style: BorderStyle.none), 
                        ),
                      label: Text(skills[i]["title"],
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                      avatar: skills[i]["img"],
                      ),
                   ),
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
                      child: Chip(
                        backgroundColor: Colors.black,
                        shape: StadiumBorder(
                        side: BorderSide(style: BorderStyle.none), 
                        ), 
                      label: Text(skills1[0]["title"],
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      avatar: Image.asset(skills1[0]["img"]), 
                        ),
                    )],
                ),

                    
                
              ],
            ),
          );
  }
}