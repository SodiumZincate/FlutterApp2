import 'package:flutter/material.dart';
import 'package:second_app/main_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(context){
    return const MainApp();
  }
}