import 'package:flutter/material.dart';
import './Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: 'Covid-19',
        theme:  ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Home() //ambil kelas home
    );
  }
}