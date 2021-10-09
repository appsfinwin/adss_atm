import 'package:flutter/material.dart';
import 'package:login/activity/app_text_style.dart';
import 'package:login/activity/home_activity/home_activity.dart';
import 'package:login/activity/login_activity.dart';
import 'package:login/activity/transaction_card.dart';
import 'package:login/bottom_bar/bottom_bar.dart';

import '../constants.dart';
import 'TransactionModel.dart';
import 'home_activity/HomeTile.dart';
import 'my_bottom_nav.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class DummyScreen extends StatefulWidget {
  const DummyScreen({Key? key}) : super(key: key);

  @override
  _DummyScreenState createState() => _DummyScreenState();
}

enum BottomIcons { Home, person, settings }

class _DummyScreenState extends State<DummyScreen> {
  BottomIcons bottomIcons= BottomIcons.Home;
  int _currentIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Bottom Nav Bar")),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            LoginActivity(),
            HomeActivity(),
            Container(
              color: Colors.blueGrey,
            ),
            Container(
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(

        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.only(left: 24, right: 24, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BottomBar(onPressed: (){
                      setState(() {
                        bottomIcons=BottomIcons.Home;
                      });
                    },
                    bottomIcons: bottomIcons== BottomIcons.Home? true : false,
                    text: "Home",
                    icon: Icons.home),
                    BottomBar(onPressed: (){
                      setState(() {
                        bottomIcons=BottomIcons.person;
                      });
                    },
                        bottomIcons: bottomIcons== BottomIcons.person? true : false,
                        text: "Person",
                        icon: Icons.person),
                    BottomBar(onPressed: (){
                      setState(() {
                        bottomIcons=BottomIcons.settings;
                      });
                    },
                        bottomIcons: bottomIcons== BottomIcons.settings? true : false,
                        text: "Settings",
                        icon: Icons.settings),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
