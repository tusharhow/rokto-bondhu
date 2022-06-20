import 'package:blood_donation/constants.dart';
import 'package:flutter/material.dart';
import 'app/views/auth/login_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: bgColor,
      ),
      home: const LoginScreenView(),
    );
  }
}
