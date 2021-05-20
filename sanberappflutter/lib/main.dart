import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Tugas12/Telegram.dart';
import 'package:sanberappflutter/Tugas/Tugas13/HomeScreen.dart';
import 'package:sanberappflutter/Tugas/Tugas13/LoginScreen.dart';
import 'package:sanberappflutter/Tugas/Tugas14/Get_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GetDataApi(),
      debugShowCheckedModeBanner: false,
    );
  }
}
