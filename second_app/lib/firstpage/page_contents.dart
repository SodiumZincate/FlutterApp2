import 'package:flutter/material.dart';

class PageOneContents extends StatelessWidget {
  const PageOneContents(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 350,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color.fromARGB(120, 0, 0, 0),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 2),
              ),
            ]),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.black,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero),
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 106, 10, 223),
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 20, right: 20),
              ),
              onPressed: switchScreen,
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz', style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
      ),
    );
  }
}
