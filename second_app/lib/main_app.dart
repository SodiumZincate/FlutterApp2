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
  var activeScreen = 'page_one';

  // Widget? activeScreen;

  // @override
  // initState(){
  //   activeScreen = PageOneContents(switchScreen);
  //   super.initState();
  // }

  // switchScreen(){
  //   setState((){
  //     activeScreen = const PageTwoContents();
  //   });
  // }

  switchScreen() {
    setState(() {
      activeScreen = 'page_two';
    });
  }

  @override
  Widget build(context) {

    Widget screenWidget = PageOneContents(switchScreen);

    if(activeScreen == 'page_two'){
      screenWidget = const PageTwoContents();
    }

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
          child: screenWidget,
        ),
      ),
    );
  }
}
