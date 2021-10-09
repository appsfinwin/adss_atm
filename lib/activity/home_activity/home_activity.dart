import 'package:flutter/material.dart';
import 'package:login/activity/my_bottom_nav.dart';
import 'package:login/activity/home_activity/HomeTile.dart';
import 'package:login/activity/my_card.dart';
import 'package:login/bottom_bar/bottom_bar.dart';

import '../TransactionModel.dart';
import '../card_model.dart';
import '../transaction_card.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  _HomeActivityState createState() => _HomeActivityState();
}
enum BottomIcons { Home, person, settings }
class _HomeActivityState extends State<HomeActivity> {

  int pageIndex = 0;
  var isPressed=false;
  BottomIcons bottomIcons= BottomIcons.Home;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
       // bottomNavigationBar: MyBottomNavBar(),
      appBar:buildAppBar(),
      body: Body(),
      bottomNavigationBar: Container(

        child: Wrap(
          children:[ Stack(
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
          )],
        ),
      ),
    );
  }

}

AppBar buildAppBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text('Accounts',style: TextStyle(
      color: Colors.black,
      fontFamily: 'merri'
    ),),
  );
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            HomeTile(),
            MyCard(card: myCards[0]),
            ListView.separated(
                itemCount: myTransactions.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemBuilder: (context, index) {
                  return TransactionCard(transaction: myTransactions[index]);
                })
          ],
        )
      ),
    );
  }
}






