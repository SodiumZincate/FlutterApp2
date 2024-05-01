import 'package:flutter/material.dart';
import 'package:second_app/firstpage/page_contents.dart';
import 'package:second_app/secondpage/page_contents.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() {
    return _MainApp();
  }
}

class _MainApp extends State<MainApp> {

  Widget activeScreen = const PageOneContents();

  swichScreen(){
    setState((){
      activeScreen = const PageOneContents();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 115, 20, 231),
                Color.fromARGB(255, 87, 13, 177),
                Color.fromARGB(255, 106, 10, 223),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
