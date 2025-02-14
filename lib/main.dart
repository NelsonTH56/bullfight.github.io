import 'package:flutter/material.dart';
import 'views/home/index_view.dart';
import 'views/home/newAccount_view.dart';
import 'views/home/login_view.dart';
import 'views/home/home_view.dart';

void main() {
  runApp(const MyApp());
}
  //nate was here
  
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SoVest',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: IndexPage(),
    );
  }
}

