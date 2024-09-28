import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
height: 40,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 30, 215, 96),
        borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(20),
      bottomRight: Radius.circular(20),
    ),
      ),
      /*
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
            )*/
    )
    ;


  }
}