import 'dart:html' as html;
import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:portfolioweb/constants/themeengine.dart';
import 'package:portfolioweb/pages/homepage.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  
  setUrlStrategy(PathUrlStrategy());  
  platformViewRegistry.registerViewFactory(
    'spline-viewer',
    (int viewId) {
      final iframe = html.IFrameElement()
        ..src = 'https://3dmodelportfolioweb.vercel.app/' 
        ..style.border = 'none'
        ..style.width = '100%'
        ..style.height = '100%';

         iframe.onWheel.listen((event) {
        event.preventDefault();
      });
      return iframe;
    },
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: mytheme,
      home: Homepage(),
    );
  }
}
