import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioweb/constants/skillicons.dart';

class Skillswiddesk extends StatelessWidget {
  const Skillswiddesk({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      //height: 700,
      width:400 ,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 30, 215, 96),
        borderRadius: BorderRadius.circular(20)
      ),
      //margin: const EdgeInsets.fromLTRB(40, 0, 40, 10),
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
      children: [
      
        Align(
          alignment: Alignment.center,
          child: Text(
            'About Me',
            style: GoogleFonts.lato(
              fontWeight: FontWeight.bold,
              height: 1.5,
              color: Colors.black,
              fontSize: 35,
            ),
          ),
        ),
        SizedBox(height: 16), 
       
        Container(
          width: MediaQuery.of(context).size.width * 0.5, 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(1),
                        borderRadius: BorderRadius.circular(20),
                ),
                child: Column(children: [
                  SizedBox(height: 16), // Space between title and content
          RichText(
            text: TextSpan(
              style: GoogleFonts.lato(
                fontSize: 22,
                color: Colors.white, // Text color for regular text
              ),
              children: [
                TextSpan(text: '👨‍🎓 Pursuing a Bachelor’s Degree in Computer Engineering.\n\n'),
                TextSpan(text: '💻 Passionate about coding and solving real-world problems through technology.\n\n'),
                TextSpan(text: '🔧 Loves building projects, from software apps to small hardware integrations.\n\n'),
                TextSpan(text: '📚 Always curious and eager to learn about new programming languages, tools, and frameworks.\n\n'),
                TextSpan(text: '🚀 Interested in AI, Web Development, and Mobile App Development, and continually exploring new fields in tech.\n\n'),
                TextSpan(text: '🎯 Strong believer in continuous learning and staying updated with the latest tech trends.\n\n'),
                TextSpan(text: '✨ Open for internships and gigs! '),
              ],
            ),)
                ],))
            ],
          ),
        ),
        SizedBox(height: 20,)
      ],
    ),
                ),
                Column(
                  mainAxisSize:MainAxisSize.min ,
                  children: [
                    Text(
                                'My Skills',
                                style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold,
                                  height: 1.5,
                                  color: Colors.black,
                                  fontSize: 35
                                ),
                              ),
                            SizedBox(height: 16),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 
                     
                         ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 450),
                          child: Wrap(
                spacing: 20, 
                runSpacing: 20,
                children: [
                  for (int i = 0; i < skills.length; i++)
                    Container(
                      width: 200, 
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(10),
                        tileColor: Colors.black,
                        shape: StadiumBorder(
                          side: BorderSide(style: BorderStyle.none),
                        ),
                        title: Center(
                          child: Text(
                            skills[i]["title"],
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        leading:   skills[i]["img"],
                      ),
                    ),
                ],
                          ),
                        ),
                      
                    
                  ],
                ),
                SizedBox(height: 50,),
                Container(
                  height: 180,
                  child: Image.asset('assets/Animation - 1727373809816.gif',
                  fit: BoxFit.contain,))
                
                        
                    
                  ],
                ),
              ],
            ),
          );
  }
}