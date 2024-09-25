import 'package:flutter/material.dart';

class Welcomewid extends StatefulWidget {
  const Welcomewid({super.key});

  @override
  State<Welcomewid> createState() => _WelcomewidState();
}

class _WelcomewidState extends State<Welcomewid> {

double _opacity = 1.0;
bool isvisible = true;

double _opacity1 = 0.0;
bool isvisible1 = false;

@override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(milliseconds: 2400), () {
    setState(() {
      _opacity = 0; 
    });
  });
  

    Future.delayed(Duration(milliseconds: 5000), () {
      setState(() {
        isvisible = false; 
      });
    });

    Future.delayed(Duration(milliseconds: 5100), () {
    setState(() {
      _opacity1 = 1; 
    });
  });
  

    Future.delayed(Duration(milliseconds: 1000), () {
      setState(() {
        isvisible = true; 
      });
    });
}


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
              child: isvisible
                  ? Center(
                    child: Column(
                      children: [
                        AnimatedOpacity(
                            opacity: _opacity,
                            duration: Duration(seconds: 2),
                            child: Image.asset(
                              'assets/Animation - 1727117307762.gif',
                              fit: BoxFit.contain,
                              height: 50, // Adjust height as needed
                            ),
                          ),
                          SizedBox(height: 150,)
                      ],
                    ),
                  )
                  : Row(
                    
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                    children: [
      
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          
                          AnimatedOpacity(
                            opacity: _opacity1,
                            duration: Duration(seconds: 2),
                            child: Text(
                              'Hello!\nI\'m Aditya',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                                color: Colors.white,
                                fontSize: 25
                              ),
                            ),
                          ),
                          
                          SizedBox(height: 10,),
      
                          AnimatedOpacity(
                            opacity: _opacity1,
                            duration: Duration(seconds: 2),
                            child: FilledButton(onPressed: () {  },
                            
                              style: ButtonStyle(
                                
                                backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 30, 215, 96))
                              ),
                              child: Text(
                                'My Resume',
                                style: TextStyle(
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                                color: Colors.black,
                                fontSize: 15
                              ))
                            ,
                            ),
                          )
                          
                        ],
                      ),
                     AnimatedOpacity(
                          opacity: _opacity1,
                          duration: Duration(seconds: 2),
                          child: Container(
                            child: Image.asset(
                              'assets/Animation - 1727264820097.gif',
                              height: 200,
                            ),
                          ),
                        )
                    ],
                  )
            ),
    );
  }
}