import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioweb/widgets/resumeget.dart';

class Welcomewidmob extends StatefulWidget {
  const Welcomewidmob({super.key});

  @override
  State<Welcomewidmob> createState() => _WelcomewidState();
}

class _WelcomewidState extends State<Welcomewidmob> {
  double _opacity = 1.0;
  bool isVisible = true;
  double _opacity1 = 0.0;
  bool isVisible1 = false;

  bool _animationPlayed = false;

  @override
  void initState() {
    super.initState();

    // Register the iframe for Spline rendering (ensure this runs only once)
    if (!_animationPlayed) {
      _playWelcomeAnimation();
    }
  }

  void _playWelcomeAnimation() {
    // Execute animation after the initial frame render
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(milliseconds: 2400), () {
        if (mounted) {
          setState(() {
            _opacity = 0; // Fade out the first part
          });
        }
      });

      Future.delayed(Duration(milliseconds: 5000), () {
        if (mounted) {
          setState(() {
            isVisible = false; // Hide the first part
          });
        }
      });

      Future.delayed(Duration(milliseconds: 5100), () {
        if (mounted) {
          setState(() {
            _opacity1 = 1; // Fade in second part
            _animationPlayed = true; // Mark animation as played
          });
        }
      });

      Future.delayed(Duration(milliseconds: 1000), () {
        if (mounted) {
          setState(() {
            isVisible = true; // Show the second part
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.black,
        height: 975-50,
        child: isVisible
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                    AnimatedOpacity(
                      opacity: _opacity,
                      duration: Duration(seconds:3),
                      child: Image.asset(
                        'assets/Animation - 1727117307762.gif',
                        fit: BoxFit.contain,
                        
                        height:200, // Adjust the height as needed
                      ),
                    ),
                    SizedBox(height: 150),
                  ],
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  AnimatedOpacity(
                    opacity: _opacity1,
                    duration: Duration(seconds: 3),
                    child: Container(
                      height: 675-50,
                      width: 725,
                      child: HtmlElementView(
                        viewType: 'spline-viewer', // Ensure this matches the registered viewType
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: AnimatedOpacity(
                          opacity: _opacity1,
                          duration: Duration(seconds: 3),
                          child: Text(
                            'Hello!\nI\'m Aditya',
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      AnimatedOpacity(
                        opacity: _opacity1,
                        duration: Duration(seconds: 3),
                        child: Resumeget(),
                      ),
                      SizedBox(height: 50+50),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}
