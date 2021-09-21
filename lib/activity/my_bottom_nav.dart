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
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Image(
                  image:AssetImage(
                    (index==0) ? 'assets/icons/home_active.png' : 'assets/icons/home.png',),

                ),
                onTap: () {

                  setState(() {
                    index=0;
                  });

                },
              ),
            ),

          ),

          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Image(
                  image:AssetImage(
                    (index==1) ? 'assets/icons/card_active.png' : 'assets/icons/card.png',),

                ),
                onTap: () {

                  setState(() {
                    index=1;
                  });

                },
              ),
            ),

          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Image(
                  image:AssetImage(
                    (index==2) ? 'assets/icons/profile_active.png' : 'assets/icons/profile.png',),

                ),
                onTap: () {

                  setState(() {
                    index=2;
                  });

                },
              ),
            ),

          ),
        ],
      ),
    );
  }
}
