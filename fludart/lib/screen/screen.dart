import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Segunda pantalla"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Notificaciones"),
          ElevatedButton(onPressed: () {
            mostrar_alerta(context);
          }, child: Text("aceptar"))],
        ),
      ),
    );
  }
}
void mostrar_alerta(BuildContext context){
  showDialog(context: context, builder: (BuildContext){
    return AlertDialog(
      title: Text("Alerta"),
      content: Text("Acercándose, el peligro viene ya..."),
    );
  });
}