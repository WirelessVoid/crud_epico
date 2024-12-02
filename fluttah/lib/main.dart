import 'package:fluttah/main2.dart';
import 'package:fluttah/pantallas/home_screen.dart';
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

  class MyHome extends StatelessWidget{
    const MyHome({
      super.key,
    });
  }
  Widget cuerpo(context)
  {
    return Container(decoration: BoxDecoration(
      image: const DecorationImage
      (image: const NetworkImage("https://e1.pxfuel.com/desktop-wallpaper/679/647/desktop-wallpaper-black-and-blue-pattern-black-geometry-android-thumbnail.jpg"),
      fit: BoxFit.cover)),
    child: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[principal(), user_txt(), pass_txt(), btn_enviar(context)],),
      ));
  }

  Widget principal(){
    return Text("LOGIN", style: TextStyle(color: Colors.white, fontSize: 30),);
  }

  Widget user_txt(){
    return Container(child: TextField(decoration:
    InputDecoration(fillColor: Colors.white, filled: true, hintText: "Usuario"),),);
  }

  Widget pass_txt(){
    return Container(child: TextField(obscureText:true, decoration: 
    InputDecoration(fillColor: Colors.white, filled: true, hintText: "Contraseña"),),);
  }

  Widget btn_enviar(BuildContext context){
    return ElevatedButton(onPressed: (){
      Navigator.push(context,
      MaterialPageRoute(builder: (context)=>Home_Screen()));
      }, 
      child: Text("Siguiente"));
  }
}