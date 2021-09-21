import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'TransactionModel.dart';
import 'app_text_style.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;

  const TransactionCard({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 5,left: 10,right: 10),
      decoration: BoxDecoration(
        // gradient: LinearGradient(begin: Alignment.topLeft, colors: [
        //   Colors.green.shade50,
        //   Colors.green.shade50,
        //   Colors.white,
        //   Colors.white,
        // ]),
          // borderRadius: BorderRadius.circular(20),
          //border: Border.all(color: Colors.grey.shade100)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  //color: transaction.color,
                ),
                child: Image.asset('assets/icons/transaction.png'),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    transaction.name,
                    style: ApptextStyle.LISTTILE_TITLE,
                  ),
                  Text(
                    transaction.month,
                    style: ApptextStyle.LISTTILE_SUB_TITLE,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "₹",
                        style: ApptextStyle.LISTTILE_TITLE,
                      ),
                      SizedBox(width: 4,),
                      Text(
                        transaction.currentBalance,
                        style: ApptextStyle.LISTTILE_TITLE,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      transaction.timeIndicator == "up"
                          ? Icon(
                              FontAwesomeIcons.plus,
                              size: 10,
                              color: Colors.green,
                            )
                          : Icon(
                              FontAwesomeIcons.minus,
                              size: 10,
                              color: Colors.red,
                            ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    transaction.time,
                    style: ApptextStyle.LISTTILE_SUB_TITLE,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
