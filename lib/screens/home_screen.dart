import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    const size30 = TextStyle(fontSize: 30.0);

    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(title: Text("Contador"), elevation: 10.0),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: ([
            const Text("Numero de clicks", style: size30),
            const SizedBox(height: 100),
            Text('$contador', style: size30),
          ]),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              print("Estoy presionando el botón");
              contador++;
              setState(() {});
              print(contador);
            },
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            child: const Text('Reset'),
            onPressed: () {
              print("Estoy presionando el botón");
              contador = 0;
              setState(() {});
              print(contador);
            },
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              print("Estoy presionando el botón");
              contador--;
              setState(() {});
              print(contador);
            },
          ),
        ],
      ),
    );
  }
}
