import 'package:flutter/material.dart';
import 'package:login/activity/login_activity.dart';
import 'activity/dummy_screen.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DummyScreen(),
      title: appName,
    );
  }
}



