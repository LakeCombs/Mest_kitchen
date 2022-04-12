import 'package:flutter/material.dart';
import 'package:healthy/home/home_page.dart';
import 'package:healthy/utils/app_input_decoration.dart';
import 'package:healthy/utils/app_resources.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _emailTextEditingController = TextEditingController();
  TextEditingController _passwordTextEditingController =
      TextEditingController();
  TextEditingController _confirmPasswordTextEditingController =
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
              Text("Sign up",
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
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: _confirmPasswordTextEditingController,
                decoration:
                    AppInputDecoration().boxDecoration("Re-enter password"),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("By continuing you agree to our "),
                  TextButton(
                    onPressed: () {},
                    child: Text("Terms of"),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Service"),
                Text("and"),
                TextButton(onPressed: () {}, child: Text("Privacy Policy"))
              ]),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                      style: TextStyle(color: Colors.white)),
                  TextButton(
                      onPressed: () {},
                      child: Text("Login",
                          style:
                              TextStyle(color: Color.fromARGB(255, 2, 11, 2))))
                ],
              )
            ],
          )),
    );
  }
}
