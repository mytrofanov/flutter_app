import 'package:flutter/material.dart';

class ResultWidget extends StatefulWidget {
  final String userName;
  final String userPhone;
  final String userEmail;
  ResultWidget(this.userName, this.userPhone, this.userEmail);

  @override
  ResultWidgetState createState() => ResultWidgetState();
}

class ResultWidgetState extends State<ResultWidget> {
  @override
  Widget build(BuildContext context) {
    // return Text(widget.userName); // Here you direct access using widget
      return SafeArea(
          minimum: const EdgeInsets.fromLTRB(0, 24, 0, 0),
    child:Scaffold(
        appBar: AppBar(title: const Text('Account Page')),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'Name:',
                ),
                Text(
                  'Phone:',
                ),
                Text(
                  'Email:',
                ),
              ]
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.userName,
                  ),
                  Text(
                    widget.userPhone,
                  ),
                  Text(
                    widget.userEmail,
                  ),
                ]
            )
          ]
        ),
      ),
      );
  }
}
