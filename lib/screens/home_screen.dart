import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;
  void incrementar() {
    setState(() => contador++);
  }

  void restablecer() {
    setState(() => contador = 0);
  }

  void decrementar() {
    setState(() => contador--);
  }

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

      floatingActionButton: CustomizedFloatingActionButton(
        incrementarFn: incrementar,
        restablecerFn: restablecer,
        decrementarFn: decrementar,
      ),
    );
  }
}

class CustomizedFloatingActionButton extends StatelessWidget {
  final Function incrementarFn;
  final Function restablecerFn;
  final Function decrementarFn;
  const CustomizedFloatingActionButton({
    super.key,
    required this.incrementarFn,
    required this.restablecerFn,
    required this.decrementarFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => incrementarFn(),
        ),
        SizedBox(width: 20),
        FloatingActionButton(
          child: const Text('Reset'),
          onPressed: () => restablecerFn(),
        ),
        SizedBox(width: 20),
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: () => decrementarFn(),
        ),
      ],
    );
  }
}
