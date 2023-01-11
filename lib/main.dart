import 'package:flutter/material.dart';
import 'package:flutter_app/pages/form.dart';
import 'package:flutter_app/pages/result.dart';

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyApp(),
    );
  }
}



// void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter App Sample';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: const EdgeInsets.fromLTRB(0, 24, 0, 0),
        child: Scaffold(
      appBar: AppBar(title: const Text(_title), centerTitle: true, actions: [
        IconButton(
          icon: const Icon(Icons.add_alert),
          tooltip: 'Show Snackbar',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar')));
          },
        ),
        IconButton(
          icon: const Icon(Icons.navigate_next),
          tooltip: 'Go to the form page',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return SafeArea(
                    minimum: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                child: Scaffold(
                  appBar: AppBar(
                    title: const Text('Form page'),
                  ),
                  body: const Center(
                    child: FormWidget(),
                  ),
                ),
                );
              },
            ));
          },
        ),
      ],),
      body: const Center(
        child: Text('This is the first page', style: TextStyle(fontSize: 24),),
      ),
    ),
        );
  }
}


