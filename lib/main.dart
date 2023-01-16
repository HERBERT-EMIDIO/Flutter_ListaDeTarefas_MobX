import 'package:flutter/material.dart';
import 'package:mobx_base/screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MobX Tutorial',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Colors.grey,
        colorScheme: ThemeData()
            .colorScheme
            .copyWith(primary: Color.fromARGB(255, 4, 72, 7)),
      ),
      home: const LoginScreen(),
    );
  }
}
