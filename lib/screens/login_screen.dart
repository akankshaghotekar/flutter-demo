import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/utils/common_widget/user_input.dart';
import 'package:flutter_application_1/utils/const/color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameText = TextEditingController();
  TextEditingController emailText = TextEditingController();
  TextEditingController passwordText = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>(); // Fix type

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen', style: TextStyle(color: white)),
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
                    UserInput(
                      controller: nameText,
                      hintText: 'Enter username',
                      validator: (value) => value == null || value.isEmpty
                          ? 'Please enter username'
                          : null,
                    ),
                    UserInput(
                      controller: emailText,
                      hintText: 'Enter email',
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) => value == null || value.isEmpty
                          ? 'Please enter email'
                          : null,
                    ),
                    UserInput(
                      controller: passwordText,
                      hintText: 'Enter Password',
                      obscureText: true,
                      validator: (value) => value == null || value.isEmpty
                          ? 'Please enter password'
                          : null,
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: blue,
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                            );
                          }
                        },
                        child: const Text(
                          'Submit',
                          style: TextStyle(color: white),
                        ),
                      ),
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
