import 'package:flutter/material.dart';

import './front.dart';
import './findUser.dart';
import './loader.dart';
import './results.dart';
import './nouser.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ig Search',
      theme: ThemeData(
        primaryColor: Color(0xFFFF2400A),
      ),
      home: Scaffold(
        body: FrontPage(),
      ),
      routes: {
        '/user': (context) => FindUser(),
        '/loader': (context) => Spinner(),
        '/result': (context) => Result(),
        '/error': (context) => NoUser(),
      },
    );
  }
}
