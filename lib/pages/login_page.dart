// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, library_private_types_in_public_api, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_2/bgimage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            BGimage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Card(
                    color: Colors.grey.withOpacity(0.8),
                    child: Column(
                      children: [
                        Form(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Enter username",
                                    labelText: "Username",
                                    labelStyle: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 9, 0, 142),
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Enter password",
                                    labelText: "Password",
                                    labelStyle: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 9, 0, 142),
                                      fontWeight: FontWeight.bold,
                                    )),
                              )
                            ],
                          ),
                        )),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shadowColor: Colors.blueGrey,
                                side: BorderSide(
                                  color: Color.fromARGB(255, 42, 2, 223),
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                textStyle: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500)),
                            onPressed: () {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //           builder: (context) => HomePage()));
                              Navigator.pushNamed(context, "/home");
                            },
                            child: Text("Sign In"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
