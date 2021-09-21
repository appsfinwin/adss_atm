import 'package:flutter/material.dart';

import 'home_activity/HomeTile.dart';

class DummyScreen extends StatefulWidget {
  const DummyScreen({Key? key}) : super(key: key);

  @override
  _DummyScreenState createState() => _DummyScreenState();
}

class _DummyScreenState extends State<DummyScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft, colors: [
              Colors.blue.shade900,
              Colors.blue.shade900,
              Colors.blue.shade700,
              Colors.blue.shade900,
            ])),

        child: Column(
          children:  [
            SizedBox(height: 20,),
            HomeTile(),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                
              ),
            )
          ],

        ),
      ),
    );
  }
}
