import 'dart:html' as html_5;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioweb/constants/projectdeets.dart';

class Projectcardweb extends StatefulWidget {
  const Projectcardweb({super.key});

  @override
  State<Projectcardweb> createState() => _ProjectcardwebState();
}

class _ProjectcardwebState extends State<Projectcardweb> {

  late List<bool> isupar ;

   void initState() {
    super.initState();
    // Initialize hover states for each project
    isupar = List.generate(projectdeet.length, (_) => false);
  }

  
    void newurl(String link){
 html_5.AnchorElement anchorElement = html_5.AnchorElement(href: link);
    anchorElement.download = "resume.pdf"; 
    anchorElement.click();
 }

  @override
  Widget build(BuildContext context) {

    
    return Wrap(
      spacing: 40,
      runSpacing: 20,
      children: [
        for(int i =0 ; i<projectdeet.length ; i++)
       Container(
        clipBehavior: Clip.antiAlias,
        height: 280,
        width: 250,
        decoration: BoxDecoration(
          //color: Color.fromARGB(255, 30, 215, 96),
          color:!isupar[i]? Color.fromARGB(255, 30, 215, 96): Color.fromARGB(255, 0, 182, 42),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            InkWell(
              highlightColor: Colors.black,
              onTap: () {
                
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      backgroundColor: Colors.transparent,
                      child: InkWell(
                        
                        onTap: () {
                          Navigator.of(context).pop(); 
                        },
                        child: Image.asset(
                          projectdeet[i]["imagesr"],
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                );
              },
              child: Image.asset(
                projectdeet[i]["imagesr"],
                height: 140,
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
      
            MouseRegion(
              onEnter: (event) {
                setState(() {
                  isupar[i]= true;
                });
              },
      
              onExit: (event) {
                setState(() {
                  isupar[i]=false;
                });
              },
              child: InkWell(
                onTap: (){ newurl(projectdeet[i]["github"]);},
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 400),
                  decoration:  BoxDecoration(
          color:!isupar[i]? Color.fromARGB(255, 30, 215, 96): Color.fromARGB(255, 0, 182, 42),
          borderRadius: BorderRadius.circular(20),
        ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      
                      children: [
                            Text(projectdeet[i]["name"],
                            style: GoogleFonts.lato(
                              color: Colors.black,
                              fontWeight:FontWeight.bold,
                              fontSize: 20
                            ),
                            //textAlign: TextAlign.left,
                            ),
                  
                            SizedBox(height: 10,),
                  
                            Text(projectdeet[i]["description"],
                            style: GoogleFonts.lato(
                              color: Colors.grey[800],
                              //fontWeight:FontWeight,
                              fontSize: 10
                            )),
                  
                            
                            SizedBox(height: 4,),
                            Row(
                              children: [
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.all(2),
                                  
                                  //decoration: BoxDecoration(
                                    //color:!isupar[i]? Color.fromARGB(255, 30, 215, 96): Color.fromARGB(255, 0, 182, 42),
                                    //shape: BoxShape.circle
                                  //),
                                  height: 25,
                                  child:  projectdeet[i]["img"])
                              ],
                            )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),]
      
    );
  }
}
