import 'package:flutter/material.dart';
import 'package:lg_retro_gaming/screens/Home.dart';
import 'package:lg_retro_gaming/screens/Settings.dart';
import 'package:lg_retro_gaming/screens/WebController.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/webcontroller': (context) => WebController(),
        '/settings': (context) => Settings(),
      },
    );
  }
}
