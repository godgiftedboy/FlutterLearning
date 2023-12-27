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
            "Positioned widget",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Container(
        width: 300,
        height: 300,
        color: Colors.blueGrey,
        child: Stack(
          children: [
            Positioned(
              bottom: 1,
              left: 1,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
