import 'package:flutter/material.dart';
import 'package:socialapp_uikit/screens/mainscreen.dart';
import 'package:socialapp_uikit/utils/constants.dart';

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
      theme: Constants.darkTheme,
      home: MainScreen(),
    );
  }

}


