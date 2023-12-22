import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Expanded widgets"),
        ),
        body: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: 50,
                height: 200,
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: 50,
                height: 200,
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 50,
                height: 200,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 50,
                height: 200,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
