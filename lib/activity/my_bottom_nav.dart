import 'package:flutter/material.dart';

import '../constants.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  var index=0;
  @override
  Widget build(BuildContext context) {
    return Container(


      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 60,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        // boxShadow: [
        //   BoxShadow(
        //     offset: Offset(0, -10),
        //     blurRadius: 150,
        //     color: kPrimaryColor.withOpacity(0.38),
        //   ),
        // ],
      ),
      child: Container(
        // width:MediaQuery.of(context).size.width ,
        // height: double.infinity,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 60,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon:Icon(Icons.home,),
                  color: (index==0) ? Colors.green : Colors.black,
                  onPressed: (){
                    setState(() {
                      index=0;
                    });
                  },

                ),
              ),
            ),

            Container(
              width: 60,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon:Icon(Icons.credit_card,),
                  color: (index==2) ? Colors.green : Colors.black,
                  onPressed: (){
                    setState(() {
                      index=1;
                    });
                  },

                ),
              ),
            ),

            Container(
              width: 60,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon:Icon(Icons.person,),
                  color: (index==0) ? Colors.green : Colors.black,
                  onPressed: (){
                    setState(() {
                      index=2;
                    });
                  },

                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
