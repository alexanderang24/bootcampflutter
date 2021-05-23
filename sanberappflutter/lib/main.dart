import 'package:flutter/material.dart';
import 'package:sanberappflutter/Quiz3/HomeScreen.dart';
import 'package:sanberappflutter/Quiz3/LoginScreen.dart';
import 'package:sanberappflutter/Quiz3/MainApp.dart';
// import 'package:sanberappflutter/Tugas/Tugas12/Telegram.dart';
// import 'package:sanberappflutter/Tugas/Tugas13/HomeScreen.dart';
// import 'package:sanberappflutter/Tugas/Tugas13/LoginScreen.dart';
// import 'package:sanberappflutter/Tugas/Tugas14/Get_data.dart';
// import 'package:sanberappflutter/Tugas/Tugas15/Dashboard.dart';
// import 'package:sanberappflutter/Tugas/Tugas15/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: 'Travel App',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => LoginScreen(),
        '/main': (context) => MainApp(),
      },
    );
  }
}
