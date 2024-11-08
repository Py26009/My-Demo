import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listmap_ui/HomePage.dart';

void main(){
  runApp(listmap());
}

  class listmap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );

  }
  }