import 'package:flutter/material.dart';
import 'package:my_project/reusable_widgets/text_field.dart';
import 'package:my_project/reusable_widgets/validators.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  String? _userName, _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              autofocus: false,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: emailController,
              validator: (value) => validateEmail(emailController.text),
              decoration: buildInputDecoration("Confirm password", Icons.email),
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              autofocus: false,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: passwordController,
              validator: (value) => value!.isEmpty ? "please Enter" : null,
              decoration: buildInputDecoration("Confirm password", Icons.email),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
                color: Colors.blue,
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                ),
                height: 45,
                minWidth: 600,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print("form is invalid");
                  } else {
                    print("form is valid");
                  }
                }),
          ],
        ),
      ),
    );
  }
}
