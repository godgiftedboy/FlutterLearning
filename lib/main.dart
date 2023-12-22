import 'package:flutter/material.dart';
import 'package:my_app/widgets/rounded_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Splitting app into widgets",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Center(
          child: Text(
            "My App Bar",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: RoundedButton(
        btnName: "Login",
        icon: Icon(Icons.login),
        btnColor: Colors.red,
        callBack: () {
          print("Logged in Succesfully");
        },
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
