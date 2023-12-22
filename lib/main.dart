import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: 200,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 200,
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 200,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 200,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
