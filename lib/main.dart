import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Views/login.dart';
import 'Views/splash.dart';

void main() {
  runApp(MyApp());
}

var routes = <String, WidgetBuilder>{
  "/login": (BuildContext context) => logIn(),
  // "/intro": (BuildContext context) => IntroScreen(),
  // "chat": (BuildContext context) => IntroScreen(),
};

class MyApp extends StatefulWidget {



  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {



    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: splash(),
      routes: routes,
    );
  }
}

