import 'package:flutter/material.dart';
import 'package:flutter_app/pages/result.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var person ={};
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController nameEditingController = TextEditingController();
  TextEditingController phoneEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            controller: nameEditingController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.account_circle),
              hintText: 'Enter your name',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              if (!RegExp(r'^[a-zA-Z]{3,7}$').hasMatch(value)){
                return 'Name is not valid';
              }
              return null;
            },
          ),
          TextFormField(
            controller: phoneEditingController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.phone),
              hintText: 'Enter your phone',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              if (!RegExp(r'\(?\d+\)?[-.\s]?\d+[-.\s]?\d+').hasMatch(value)){
              return 'Phone is not valid';
              }
              return null;
            },
          ),
          TextFormField(
            controller: emailEditingController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.mail_outline),
              hintText: 'Enter your email',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(value)){
                return 'Email is not valid';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
                  final name = nameEditingController.text;
                  final phone = phoneEditingController.text;
                  final email = emailEditingController.text;
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResultWidget(name, phone, email)));
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}