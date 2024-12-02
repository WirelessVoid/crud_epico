import 'package:datanav_app/Screens/screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      color: Color.fromARGB(255, 56, 58, 61),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController _txtPin =TextEditingController(text:"");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [TextField(
            controller: _txtPin,
            decoration: const InputDecoration(
              hintText: "PIN",
              fillColor: Color.fromARGB(255, 128, 128, 128),
              filled: true)
              ,),
              ElevatedButton(
              onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>Screen2())
              );
              },
              child: Text("Ingresar"))],
        ),
      ),
    );
  }
}