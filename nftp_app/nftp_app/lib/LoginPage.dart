import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _password;
  String _email;

  bool _emailIsValid = true;

  final _formKey = GlobalKey<FormState>();
  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        if (sizingInformation.isDesktop) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Login Page"),
            ),
            body: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: Center(
                      child: Image.asset(
                        "assets/images/login_il.png",
                        width: 600,
                        height: 600,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 150,
                    ),
                    child: _createMobileLayout(context),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: Text("Login Page"),
            ),
            body: _createMobileLayout(context),
          );
        }
      },
    );
  }

  Widget _createMobileLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  // print("Email: " + value);
                  _email = value;
                },
                validator: MultiValidator(
                  [
                    EmailValidator(errorText: 'Please provide a valid email'),
                    RequiredValidator(errorText: 'Email is required'),
                  ],
                ),
              ),
              Container(
                height: 20,
              ),
              TextFormField(
                onChanged: (value) {
                  // print("Password: " + value);
                  _password = value;
                },
                obscureText: _obsecureText,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(),
                  suffixIcon: GestureDetector(
                    child: Icon(_obsecureText
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onTap: () {
                      setState(() {
                        _obsecureText = !_obsecureText;
                      });
                    },
                  ),
                ),
                validator: MultiValidator(
                  [
                    RequiredValidator(errorText: "Password is required"),
                    MinLengthValidator(8,
                        errorText: "Password length cannot be less than 8"),
                  ],
                ),
              ),
              Container(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Processing Data')));
                  }
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
