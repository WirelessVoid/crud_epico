import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  final num saldo;
  final Function(num) transferencia;

  Screen3({required this.saldo, required this.transferencia, super.key});

  final TextEditingController _txtCuenta = TextEditingController(text: "");
  final TextEditingController _txtMonto = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Transacción")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _txtCuenta,
              decoration: InputDecoration(
                hintText: "Cuenta",
                fillColor: const Color.fromARGB(255, 128, 128, 128),
                filled: true,
              ),
            ),
            TextField(
              controller: _txtMonto,
              decoration: InputDecoration(
                hintText: "Monto",
                fillColor: const Color.fromARGB(255, 128, 128, 128),
                filled: true,
              ),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                num monto = num.tryParse(_txtMonto.text) ?? 0;
                if (monto > 0 && monto <= saldo) {
                  transferencia(monto);
                  Navigator.pop(context);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Monto inválido o insuficiente")),
                  );
                }
              },
              child: Text("Enviar"),
            ),
          ],
        ),
      ),
    );
  }
}