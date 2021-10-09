import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final VoidCallback onPressed;
  final bool bottomIcons;
  final String text;
  final IconData icon;

  BottomBar({Key? key, required this.onPressed, required this.bottomIcons, required this.text, required this.icon}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: widget.bottomIcons==true
          ? Container(
              decoration: BoxDecoration(
                  color: Colors.indigo.shade100.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(30)),
              padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
              child: Row(
                children: [
                  Icon(widget.icon),
                  SizedBox(width: 8),
                  Text(
                    widget.text,
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 15,
                        fontFamily: 'merri'),
                  ),
                ],
              ),
            )
          : Icon(widget.icon),
    );
  }
}
