import 'package:flutter/material.dart';
import 'package:my_app/widgets/rounded_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const FaIcon(
            FontAwesomeIcons.amazon,
            color: Colors.blue,
            size: 50,
          ),
          SizedBox(
            width: 150,
            child: RoundedButton(
              btnName: "Login",
              icon: const Icon(
                Icons.login,
                color: Colors.white,
              ),
              callBack: () {
                // ignore: avoid_print
                print("Logged in Succesfully");
              },
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          //play button
          SizedBox(
            width: 150,
            child: RoundedButton(
              btnColor: Colors.red,
              btnName: "Play",
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
              callBack: () {
                // ignore: avoid_print
                print("Played");
              },
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          //press button
          SizedBox(
            width: 150,
            child: RoundedButton(
              btnColor: Colors.grey,
              btnName: "Press",
              callBack: () {
                // ignore: avoid_print
                print("Pressed");
              },
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
