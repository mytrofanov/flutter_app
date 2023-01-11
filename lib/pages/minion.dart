import 'package:flutter/material.dart';

class MinionWidget extends StatefulWidget {
  const MinionWidget({super.key});

  @override
  State<MinionWidget> createState() => _MinionWidgetState();
}

class _MinionWidgetState extends State<MinionWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static const String firstMinion = 'https://m.media-amazon.com/images/I/51htvP5j97L._AC_.jpg';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child:const Image(
        image: NetworkImage(firstMinion),
      ),
    );
  }
}