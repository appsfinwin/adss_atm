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
      bottomNavigationBar:
      MyBottomNavBar(),
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 1,
        centerTitle: true,
        title: Text('account',
        textAlign: TextAlign.center,
        style: ApptextStyle.statementNameStyle,
        ),

      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(

          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter, colors: [
                Colors.green.shade50,
                Colors.green.shade50,

              ])),

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                HomeTile(),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Recent Transactions",
                  style: ApptextStyle.BODY_TEXT,
                ),
                SizedBox(
                  height: 15,
                ),

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

            ),
          ),
        ),
      ),
    );
  }
}
