import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: column()
    );
  }
}

void show_alert(BuildContext context)
{
  showDialog(
    context: context,
    builder: (BuildContext){
      return AlertDialog(
        title: Text("Atención!"),
        content: Text("se aproxima la 2da evaluacion"),
      );
    });
}
