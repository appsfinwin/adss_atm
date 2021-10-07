import 'package:flutter/material.dart';
import 'package:login/activity/app_text_style.dart';
import 'package:login/activity/transaction_card.dart';

import '../constants.dart';
import 'TransactionModel.dart';
import 'home_activity/HomeTile.dart';
import 'my_bottom_nav.dart';

class DummyScreen extends StatefulWidget {
  const DummyScreen({Key? key}) : super(key: key);

  @override
  _DummyScreenState createState() => _DummyScreenState();
}

class _DummyScreenState extends State<DummyScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
                body: Container(
                  margin: EdgeInsets.only(top: 8),
                  child: ListView(
                    physics: ClampingScrollPhysics(),
                    children: [
                      Container(
                        margin: EdgeInsets.only(left:16,right: 16,top:16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                child: Icon(Icons.menu),
                              onTap: (){
                                  print("on tap");
                              },

                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage('assets/icons/profile.png')
                                )
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
    );
  }
}
