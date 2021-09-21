import 'package:flutter/material.dart';


class InstaHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(

       // body: new InstaBody(),
        bottomNavigationBar: new Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child:  BottomAppBar(
            child:  BottmNavBar(),
          ),
        ));
  }

  Row BottmNavBar() {
    return Row(
            // alignment: MainAxisAlignment.spaceAround,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
               IconButton(
                icon: Icon(
                  Icons.home,
                ),
                onPressed: () {},
              ),
               IconButton(
                icon: Icon(
                  Icons.search,
                ),
                onPressed: null,
              ),
               IconButton(
                icon: Icon(
                  Icons.add_box,
                ),
                onPressed: null,
              ),
               IconButton(
                icon: Icon(
                  Icons.favorite,
                ),
                onPressed: null,
              ),
               IconButton(
                icon: Icon(
                  Icons.account_box,
                ),
                onPressed: null,
              ),
            ],
          );
  }
}