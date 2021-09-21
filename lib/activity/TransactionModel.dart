import 'package:flutter/material.dart';

class TransactionModel {
  String name;
  String avatar;
  String currentBalance;
  String month;
  String timeIndicator;
  String time;
  Color color;

  TransactionModel({
    required this.avatar,
    required this.time,
   required this.timeIndicator,
   required this.currentBalance,
   required this.month,
   required this.name,
   required this.color,
  });
}

List<TransactionModel> myTransactions = [
  TransactionModel(
    avatar: "assets/icons/avatar1.png",
    currentBalance: "5482",
    time: "04:00 pm",
    timeIndicator: "up",
    month: "Jan",
    name: "Supreme Leader",
    color: Colors.green.shade100,
  ),
  TransactionModel(
    avatar: "assets/icons/avatar2.png",
    currentBalance: "4252",
    timeIndicator: "down",
    time: "04:00 pm",
    month: "Mar",
    name: "Jane Doe",
    color: Colors.orange.shade100,
  ),
  TransactionModel(
    avatar: "assets/icons/avatar3.png",
    currentBalance: "4052",
    time: "04:00 pm",
    timeIndicator: "down",
    month: "Mar",
    name: "Alex Doe",
    color: Colors.red.shade100,
  ),
  TransactionModel(
    avatar: "assets/icons/avatar4.png",
    currentBalance: "5052",
    timeIndicator: "up",
    time: "04:00 pm",
    month: "Mar",
    name: "Sam Doe",
    color: Colors.deepPurple.shade100,
  ),
  TransactionModel(
    avatar: "assets/icons/avatar1.png",
    currentBalance: "5482",
    time: "04:00 pm",
    timeIndicator: "up",
    month: "Jan",
    name: "Supreme Leader",
    color: Colors.green.shade100,
  ),
  TransactionModel(
    avatar: "assets/icons/avatar2.png",
    currentBalance: "4252",
    timeIndicator: "down",
    time: "04:00 pm",
    month: "Mar",
    name: "Jane Doe",
    color: Colors.orange.shade100,
  ),
];
