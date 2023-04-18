import 'package:conselheiro/presentation/widgets/input_name/input_name_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const InputNameScreen());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
