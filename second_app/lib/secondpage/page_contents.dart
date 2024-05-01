import 'package:flutter/material.dart';

class PageTwoContents extends StatefulWidget{
  const PageTwoContents({super.key});

  @override
  State<PageTwoContents> createState(){
    return _PageTwoContents();
  }
}

class _PageTwoContents extends State<PageTwoContents>{

  @override
  Widget build(context){
    return const Text('Hello World!');
  }
}