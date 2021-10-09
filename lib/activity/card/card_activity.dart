import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:flutter_switch/flutter_switch.dart';
import '../card_model.dart';
import '../login_activity.dart';
import '../my_card.dart';
import 'card_togle.dart';

class CardActivity extends StatefulWidget {
  const CardActivity({Key? key}) : super(key: key);

  @override
  _CardActivityState createState() => _CardActivityState();
}

class _CardActivityState extends State<CardActivity> {
  bool status = false;
  bool atmStatus = false;
  bool cardDetailsStatus = false;
  bool internationalPayments = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar() ,
      //body: CardBody(),

      body: Container(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 30),
                alignment: Alignment.topLeft,
                child: Text("Virtual Card",
                  style: TextStyle(
                      fontFamily: 'merri',
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(child: MyCard(card: myCards[0])),
              SizedBox(height: 20,),
              Container(

                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Card Settings",
                      style: TextStyle(
                          fontFamily: 'merri',
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                  )),
              SizedBox(height: 20,),

              Togle(
                onTogle: (val) {
                  setState(() {
                    cardDetailsStatus = val;
                  });
                },
                status: cardDetailsStatus,
                text: "Show Card Details",
              ),

              Togle(
                  onTogle: (val) {
                    setState(() {
                      status = val;
                    });
                  },
                  status: status,
                  text: "Online Payments",
              ),Togle(
                  onTogle: (val) {
                    setState(() {
                      atmStatus = val;
                    });
                  },
                  status: atmStatus,
                  text: "ATM Withdrawals",
              ),Togle(
                  onTogle: (val) {
                    setState(() {
                      internationalPayments = val;
                    });
                  },
                  status: internationalPayments,
                  text: "International Payments",
              ),

              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     child: Padding(
              //       padding: const EdgeInsets.only(left: 10,right: 10),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Text("ATM Withdrawals",
              //             style: TextStyle(
              //                 fontFamily: 'merri',
              //                 fontWeight: FontWeight.bold,
              //                 fontSize: 16
              //             ),
              //           ),
              //           FlutterSwitch(
              //             activeColor: Colors.green.shade600,
              //             width: 70,
              //             height:30,
              //             valueFontSize: 15.0,
              //             toggleSize: 15,
              //             value: status,
              //             borderRadius: 20,
              //             padding: 8.0,
              //             showOnOff: true,
              //             onToggle: (val) {
              //               setState(() {
              //                 status = val;
              //               });
              //             },
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // )

              SizedBox(height: 20,),
              Container(
                height: (MediaQuery.of(context).size.height)/15,
                width: double.infinity,
                child:Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Button(
                    buttonText: "Change PIN",
                    onPressed: (){

                    },),
                ) ,
              )
            ],
          ),
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
    title: Text('Cards',style: TextStyle(
        color: Colors.black,
        fontFamily: 'merri',
        fontWeight: FontWeight.bold
    ),),

    leading: Icon(Icons.menu,color: Colors.black,),
  );
}

class CardBody extends StatefulWidget {
  const CardBody({Key? key}) : super(key: key);

  @override
  _CardBodyState createState() => _CardBodyState();
}

class _CardBodyState extends State<CardBody> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(child: MyCard(card: myCards[0])),
            SizedBox(height: 20,),
            Container(

                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Card Settings",
                    style: TextStyle(
                        fontFamily: 'merri',
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                )),
            SizedBox(height: 20,),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("ATM Withdrawals",
                        style: TextStyle(
                            fontFamily: 'merri',
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      FlutterSwitch(
                        activeColor: Colors.green.shade600,
                        width: 70,
                        height:30,
                        valueFontSize: 15.0,
                        toggleSize: 15,
                        value: status,
                        borderRadius: 20,
                        padding: 8.0,
                        showOnOff: true,
                        onToggle: (val) {
                          setState(() {
                            status = val;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
