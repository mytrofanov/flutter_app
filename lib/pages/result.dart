import 'package:flutter/material.dart';

class ResultWidget extends StatefulWidget {
  final String userName;
  final String userPhone;
  final String userEmail;
  ResultWidget(this.userName, this.userEmail, this.userPhone);

  @override
  ResultWidgetState createState() => ResultWidgetState();
}

class ResultWidgetState extends State<ResultWidget> {
  @override
  Widget build(BuildContext context) {
    // return Text(widget.userName); // Here you direct access using widget
      return Scaffold(
        appBar: AppBar(title: const Text('Second screen')),
        body: Center(
          child: Text(
            widget.userName,
            style: const TextStyle(fontSize: 24),
          ),
        ),
      );
  }
}
  // // receive data from the FirstScreen as a parameter
  // ResultWidget({Key key, required this.something}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: const Text('Second screen')),
  //     body: Center(
  //       child: Text(
  //         something,
  //         style: const TextStyle(fontSize: 24),
  //       ),
  //     ),
  //   );
  // }
// }
