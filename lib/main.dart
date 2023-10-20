// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.light,
        textTheme: const TextTheme(
        
          headline1: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 28.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
        useMaterial3: true,
      ),
      home: const HomeComponent(
        title: 'Adrien Miller Controle',
        description: 'Appuie sur le bouton pour voir des choses',
      ),
    );
  }
}
