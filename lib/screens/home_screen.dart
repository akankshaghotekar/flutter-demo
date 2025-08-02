import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/const/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          const Center(
            child: Text(
              'Welcome to the Home Screen!',
              style: TextStyle(color: black),
            ),
          ),
        ],
      ),
    );
  }
}
