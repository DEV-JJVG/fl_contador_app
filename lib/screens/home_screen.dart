import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(title: Text("HomeScreen"), elevation: 10.0),

      body: Center(
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: ([
            Text("Hola Mundo desde mi nuevo HomeScreen"),
            Text("Bocata lomo ya"),
          ]),
        ),
      ),
    );
  }
}
