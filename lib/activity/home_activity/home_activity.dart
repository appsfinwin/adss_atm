import 'package:flutter/material.dart';
import 'package:login/activity/my_bottom_nav.dart';
import 'package:login/activity/home_activity/HomeTile.dart';
import 'package:login/activity/my_card.dart';

import '../TransactionModel.dart';
import '../card_model.dart';
import '../transaction_card.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  _HomeActivityState createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {

  int pageIndex = 0;
  var isPressed=false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar:
       MyBottomNavBar(),
      appBar:buildAppBar(),
      body: Body(),
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
      fontFamily: 'Fredoka'
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






