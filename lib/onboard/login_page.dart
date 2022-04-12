import 'package:flutter/material.dart';
import 'package:healthy/home/home_page.dart';
import 'package:healthy/utils/app_input_decoration.dart';
import 'package:healthy/utils/app_resources.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailTextEditingController = TextEditingController();
  TextEditingController _passwordTextEditingController =
      TextEditingController();

  bool _startLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppResource.primaryColor,
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          color: AppResource.primaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100.0),
              Text(
                AppResource.appName,
                style: TextStyle(
                    color: AppResource.primaryColorMain,
                    fontSize: AppResource.H1font,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              Text("Welcome back!",
                  style: TextStyle(
                      color: Colors.white, fontSize: 30.0, letterSpacing: 1)),
              SizedBox(
                height: 64,
              ),
              TextField(
                  controller: _emailTextEditingController,
                  decoration: AppInputDecoration().boxDecoration("Email")),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: _passwordTextEditingController,
                decoration: AppInputDecoration().boxDecoration("Password"),
              ),
              // _startLoading ? CircularProgressIndicator() : Container(),
              SizedBox(
                height: 200.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 27, 92, 29),
                ),
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  onPressed: () {},
                  child: !_startLoading
                      ? Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        )
                      : CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white)),
                ),
              ),
            ],
          )),
    );
  }

  void handleLoginInput() {
    String email = _emailTextEditingController.text.trim();
    String password = _passwordTextEditingController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      return;
    }

    setState(() {
      _startLoading = true;
    });

    Navigator.pushAndRemoveUntil<dynamic>(
        context,
        MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => MyHomePage(),
        ),
        (route) => false);
  }
}
