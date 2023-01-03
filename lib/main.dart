import 'package:flutter/material.dart';
import 'package:flutter_app/pages/form.dart';
import 'package:flutter_app/pages/result.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Form Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const FormWidget(),
      ),
      initialRoute: '/',
      routes: {
        '/result': (context) => ResultWidget('','',''),
      },
    );
  }
}


