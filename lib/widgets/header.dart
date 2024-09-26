import 'package:flutter/material.dart';
import 'package:portfolioweb/constants/topbuttons.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.fromLTRB(10, 0,0 , 5),
            child: Row(
              
              children: [
                
                
                /*IconButton(
                    onPressed: () {  },
                    icon: Icon(Icons.home_outlined,
                    color: Colors.white,),
                    ),*/
                  
              
              Spacer(),

              for(int i=0 ; i<topbuttons.length ; i++)
                Container(
                  decoration: BoxDecoration(),
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: TextButton(
                     onPressed: () {  },
                     child: Text(
                      topbuttons[i],
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),)),
                ),
                Spacer(),
              ]
            )
    )
    ;


  }
}