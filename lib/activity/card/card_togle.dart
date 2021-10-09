import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Togle extends StatefulWidget {
  final  Function(bool) onTogle;
  final bool status;
  final String text;
  const Togle({Key? key, required this.onTogle, required this.status, required this.text}) : super(key: key);

  @override
  _TogleState createState() => _TogleState();
}

class _TogleState extends State<Togle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.text,
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
                  value: widget.status,
                  borderRadius: 20,
                  padding: 8.0,
                  showOnOff: true,
                  onToggle:widget.onTogle
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
