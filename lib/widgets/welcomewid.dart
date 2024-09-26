import 'package:flutter/material.dart';

class Welcomewid extends StatefulWidget {
  const Welcomewid({super.key});

  @override
  State<Welcomewid> createState() => _WelcomewidState();
}

class _WelcomewidState extends State<Welcomewid> {
  double _opacity = 1.0;
  bool isVisible = true;

  double _opacity1 = 0.0;
  bool isVisible1 = false;

  // Add a flag to track if the animation has been played
  bool _animationPlayed = false;

  @override
  void initState() {
    super.initState();

    // Check if the animation has already played
    if (!_animationPlayed) {
      _playWelcomeAnimation();
    }
  }

  void _playWelcomeAnimation() {
    // Schedule the animations using WidgetsBinding
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(milliseconds: 2400), () {
        if (mounted) {
          setState(() {
            _opacity = 0;
          });
        }
      });

      Future.delayed(Duration(milliseconds: 5000), () {
        if (mounted) {
          setState(() {
            isVisible = false;
          });
        }
      });

      Future.delayed(Duration(milliseconds: 5100), () {
        if (mounted) {
          setState(() {
            _opacity1 = 1;
            _animationPlayed = true; // Mark animation as played
          });
        }
      });

      Future.delayed(Duration(milliseconds: 1000), () {
        if (mounted) {
          setState(() {
            isVisible = true;
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: isVisible
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
                    SizedBox(height: 150),
                  ],
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
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
                            fontSize: 40,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      AnimatedOpacity(
                        opacity: _opacity1,
                        duration: Duration(seconds: 2),
                        child: FilledButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 30, 215, 96),
                          ),
                          child: Text(
                            'My Resume',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                              color: Colors.black,
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  AnimatedOpacity(
                    opacity: _opacity1,
                    duration: Duration(seconds: 2),
                    child: Container(
                      child: Image.asset(
                        'assets/Animation - 1727374271563.gif',
                        height: 200,
                        scale: 0.8,
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
