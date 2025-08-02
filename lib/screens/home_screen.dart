import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/common_widget/user_input.dart';
import 'package:flutter_application_1/utils/const/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameText = TextEditingController();
  TextEditingController emailText = TextEditingController();
  TextEditingController passwordText = TextEditingController();

  GlobalKey formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dress Rental System',
          style: TextStyle(color: white),
        ),
        centerTitle: true,
        backgroundColor: blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: formKey,
            child: Center(
              child: Container(
                height: 500,
                width: 300,
                child: Column(
                  children: [
                    UserInput(controller: nameText, hintText: 'Enter username'),
                    UserInput(controller: emailText, hintText: 'Enter email'),
                    UserInput(
                      controller: passwordText,
                      hintText: 'Enter Password',
                      obscureText: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
