import 'package:datanav_app/Screens/screen3.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  num saldo = 190000000;

  void actualizarSaldo(monto) {
    setState(() {
      saldo -= monto;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Transferencias")),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 180,
              height: 180,
              child: Image.network(
                "https://static.vecteezy.com/system/resources/thumbnails/019/896/008/small_2x/male-user-avatar-icon-in-flat-design-style-person-signs-illustration-png.png",
              ),
              ),
            SizedBox(height: 10),
            Text("Cuenta 123456789"),
            SizedBox(height: 5),
            Text(
              "$saldo",
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen3(
                      saldo: saldo,
                      transferencia: actualizarSaldo,
                    ),
                  ),
                );
              },
              child: Text('Transferir'),
            ),
          ],
        ),
      ),
    );
  }
}