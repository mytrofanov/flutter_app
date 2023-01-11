import 'package:flutter/material.dart';
import 'package:flutter_app/pages/form.dart';

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


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppWidgetState();
}

class MyAppWidgetState extends State<MyApp> {

  static const String _title = 'Flutter App Sample';
  static const String firstMinion = 'https://media.tenor.com/dZXZ1B1_TVcAAAAC/minion-animated.gif';
  static const String secondMinion = 'https://media.tenor.com/AH-wqhPOtV8AAAAC/minions-sad.gif';
  static const String thirdMinion = 'https://media.tenor.com/f6d3D2EgFUYAAAAC/minions-cute.gif';

  List minions = [];

  @override
  void initState() {
    super.initState();
    minions.addAll([firstMinion, secondMinion, thirdMinion]);
  }

  @override
  Widget build(BuildContext context) {
    removeMinion(index){
      setState(() {
        minions.removeAt(index);
      });
    }
    addMinion(){
      setState(() {
        minions.add(firstMinion);
      });
    }
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
      body: ListView.builder(
            itemCount: minions.length,
            itemBuilder: (BuildContext context, int index) {
              // return Image(image: minions[index]);
              return Dismissible(
                key:  Key(minions[index]),
                child: ListTile(
                  title: Text('Minion #${index + 1}'),
                  subtitle: Image(
                    image: NetworkImage(minions[index]),
                  ),
                ),
                onDismissed: (direction){
                  setState(() {
                    minions.removeAt(index);
                  });
                },
              );
            },
        ),
        // child: Text('This is the first page', style: TextStyle(fontSize: 24),),

          bottomNavigationBar: BottomAppBar(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: OverflowBar(
                overflowAlignment: OverflowBarAlignment.center,
                alignment: MainAxisAlignment.center,
                overflowSpacing: 5.0,
                children: <Widget>[
                  const SizedBox(width: 5),
                  ElevatedButton.icon(
                    onPressed: () {
                      addMinion();
                    },
                    icon: const Icon(Icons.add),
                    label: const Text(
                      'Minion',
                    ),
                  ),
                ],
              ),
            ),
          ),
    ),
        );
  }
}


