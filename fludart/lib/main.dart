import 'package:fludart/screen/screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
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
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text("Hola mundouuu"),
          ElevatedButton(onPressed: (){
            //print("hola");
            Navigator.push(context,
             MaterialPageRoute(builder: (context)=>Screen()));
            }
          , child: const Text("Siguiente"))],
        )
      ),
    );
  }
}