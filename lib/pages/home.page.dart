import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/shell.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shell(
      'Home',
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            const Text(
              'Doem moedinhas para mim! 😉',
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const Text(
              'lucas.viana@dtidigital.com.br',
              style: const TextStyle(fontSize: 28),
            ),
          ],
        ),
      ),
    );
  }
}
