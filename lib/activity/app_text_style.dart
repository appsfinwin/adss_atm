import 'package:flutter/material.dart';

import '../constants.dart';

class ApptextStyle {
  static const TextStyle MY_CARD_TITLE =
  TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16);

  static  TextStyle MY_CARD_SUBTITLE =
  TextStyle(fontWeight: FontWeight.w700, color: Colors.grey.shade50, fontSize: 18);

  static const TextStyle BODY_TEXT = TextStyle(
      color: kPrimaryColor, fontWeight: FontWeight.w700, fontSize: 18);

  static const TextStyle LISTTILE_TITLE = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: 'padauk'
  );

  static const TextStyle statementNameStyle = TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: 'monsterat'
  );

  static const TextStyle LISTTILE_SUB_TITLE = TextStyle(
    color: Colors.grey,
    fontSize: 15,
  );
}