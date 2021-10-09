import 'package:flutter/material.dart';

class HomeTile extends StatefulWidget {
  const HomeTile({key}) : super(key: key);



  @override
  State<HomeTile> createState() => _HomeTileState();
}

class _HomeTileState extends State<HomeTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height)/4,

      decoration: BoxDecoration(

          borderRadius: BorderRadius.all(Radius.circular(20),
          )
      ),

      child: Column(

        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration:  BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                    Colors.green.shade50,
                    Colors.white,
                  ]),


                  borderRadius:  BorderRadius.all(Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        Text(
                          "Good Morning",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'monsterat'),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Leslin Antony ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: 'merri'),
                        ),
                        SizedBox(height:25,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Current Balance",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontFamily: 'monsterat'),
                            ),
                            SizedBox(height: 8,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "2598.35 ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontFamily: 'merri'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 2),
                                  child: Text(
                                    "Rupees ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'merri'),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}