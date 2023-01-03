import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                  final _name = nameEditingController.text;
                  final _phone = phoneEditingController.text;
                  final _email = emailEditingController.text;
                  print(_name);
                  print(_phone);
                  print(_email);
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