import 'package:flutter/material.dart';
import 'SignUp.dart';
import 'LogIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/SignUp',
      routes: {
        '/SignUp' : (context) => SignUp(),
        '/LogIn' : (context) => LogIn(),
      },
    );
  }
}


