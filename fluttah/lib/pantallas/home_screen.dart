import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key})

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Segunda Pantalla"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Notificaciones"),
            ElevatedButton(onPressed: (){
              mostrar_alerta(context);
            }, 
            child: Text("Aceptar"))],
        ),
      ),
    );
  }
}
void mostrar_alerta(BuildContext context){
  showDialog(context: context, 
  builder: (BuildContext){
    return AlertDialog(
      title: Text("Alerta"),
      content: Text("Se acerca la siguiente evaluacion"),
    );
  });
}