import 'package:flutter/material.dart';
import 'package:portfolioweb/constants/topbuttons.dart';

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
          
          Container(
            padding: EdgeInsets.fromLTRB(10, 0,0 , 5),
            child: Row(
              
              children: [
                Container(
                  
                height: 50,
                width: 100,
                //child: Text('data'),
                decoration: BoxDecoration(
                  
                  image: DecorationImage(
                   opacity: 0.8,
                    image: AssetImage('assets/Animation - 1727117307762.gif'),
                    fit: BoxFit.contain,
                 ),
                ),
              ),
              Spacer(),

              for(int i=0 ; i<topbuttons.length ; i++)
                TextButton(
                   onPressed: () {  },
                   child: Text(
                    topbuttons[i],
                    style: TextStyle(
                      color: Colors.white,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),))
              
              ],
            ),
          )

        ],
      )
    );
  }
}