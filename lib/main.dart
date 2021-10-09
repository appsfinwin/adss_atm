import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:login/activity/card/card_activity.dart';
import 'package:login/activity/home_activity/home_activity.dart';
import 'package:login/activity/login_activity.dart';
import 'activity/dummy_screen.dart';
import 'constants.dart';
import 'package:grouped_list/grouped_list.dart';

void main() {
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: CardActivity(),
      home: LoginActivity(),
      title: appName,
    );
  }
List _elements = [
  {'name': 'John', 'group': 'Team A'},
  {'name': 'Will', 'group': 'Team B'},
  {'name': 'Beth', 'group': 'Team A'},
  {'name': 'Miranda', 'group': 'Team B'},
  {'name': 'Mike', 'group': 'Team C'},
  {'name': 'Danny', 'group': 'Team C'},
];
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Grouped List View Example'),
//         ),
//         body: GroupedListView<dynamic, String>(
//           elements: _elements,
//           groupBy: (element) => element['group'],
//           groupComparator: (value1, value2) => value2.compareTo(value1),
//           itemComparator: (item1, item2) =>
//               item1['name'].compareTo(item2['name']),
//           order: GroupedListOrder.DESC,
//           useStickyGroupSeparators: true,
//           groupSeparatorBuilder: (String value) => Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               value,
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//           itemBuilder: (c, element) {
//             return Card(
//               elevation: 8.0,
//               margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
//               child: Container(
//                 child: ListTile(
//                   contentPadding:
//                       EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
//                   leading: Icon(Icons.account_circle),
//                   title: Text(element['name']),
//                   trailing: Icon(Icons.arrow_forward),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }



}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterSwitch Demo"),
      ),
      body: Center(
        child: Container(
          child: FlutterSwitch(
            width: 125.0,
            height: 55.0,
            valueFontSize: 25.0,
            toggleSize: 45.0,
            value: status,
            borderRadius: 30.0,
            padding: 8.0,
            showOnOff: true,
            onToggle: (val) {
              setState(() {
                status = val;
              });
            },
          ),
        ),
      ),
    );
  }
}
