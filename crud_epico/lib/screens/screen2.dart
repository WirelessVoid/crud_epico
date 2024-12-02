import 'package:crud_epico/screens/screen3.dart';
import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  const screen2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tours"),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 32, 32, 82),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/fondo.jpg'),
          ),
          const Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Text(
              "¿Qué tour deseas tomar?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 10,
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 105, 130, 153),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    "Tour Lunar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
          ),
          Positioned(
            top: 100,
            left: 160,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const screen3()
                  ),
                );
              },
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 105, 130, 153),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    "Tour Solar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 10,
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 105, 130, 153),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    "Tour Nebuloso",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
          ),
          Positioned(
            top: 250,
            left: 160,
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 105, 130, 153),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    "Tour Galáctico",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}