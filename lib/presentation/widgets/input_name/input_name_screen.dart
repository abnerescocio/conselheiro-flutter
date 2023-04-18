import 'package:flutter/material.dart';

class InputNameScreen extends StatefulWidget {
  const InputNameScreen({super.key});

  @override
  State<InputNameScreen> createState() => _InputNameScreenState();
}

class _InputNameScreenState extends State<InputNameScreen> {
  void Function()? _onPressed = null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Insira o nome"),
        ),
        body: Column(
          children: [
            TextFormField(),
            ElevatedButton(
              onPressed: _onPressed,
              child: const Text("Avançar"),
            )
          ],
        ),
      ),
    );
  }
}
