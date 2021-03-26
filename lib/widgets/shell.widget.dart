import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/sidebar.widget.dart';

class Shell extends StatefulWidget {
  final String title;
  final Widget child;

  Shell(
    this.title,
    this.child,
  );

  @override
  _ShellState createState() => _ShellState();
}

class _ShellState extends State<Shell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Sidebar(),
      body: widget.child,
    );
  }
}
