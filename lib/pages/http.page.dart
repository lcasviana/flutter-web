import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_web/models/todo.model.dart';
import 'package:flutter_web/widgets/shell.widget.dart';

class HttpPage extends StatefulWidget {
  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  bool _loading = false;
  String _result = '';
  TodoModel? _todoModel;

  void _clear() {
    setState(() {
      _loading = true;
      _result = '';
      _todoModel = null;
    });
  }

  void _setResult(String result) {
    setState(() {
      _loading = false;
      _result = result;
    });
  }

  void _getArticles() {
    _clear();
    http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1')).then((response) {
      _setResult(response.body.toString());
      setState(() => _todoModel = TodoModel.fromJson(jsonDecode(response.body)));
    }).catchError((error) {
      _setResult(error.toString());
    });
  }

  void _getBlo() {
    _clear();
    Future.delayed(const Duration(milliseconds: 500), () => _setResult('Bló'));
  }

  Widget _actionButton(String title, Function function) {
    return ElevatedButton(
      child: _loading ? SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2)) : Text(title),
      onPressed: _loading ? null : () => function(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Shell(
      'HTTP Request',
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              spacing: 16,
              children: [
                _actionButton('Blá', _getArticles),
                _actionButton('Bló', _getBlo),
              ],
            ),
            Text(_result, style: const TextStyle(fontSize: 28)),
            if (_todoModel != null)
              Column(
                children: [
                  Text(_todoModel!.userId.toString(), style: const TextStyle(fontSize: 16)),
                  Text(_todoModel!.id.toString(), style: const TextStyle(fontSize: 16)),
                  Text(_todoModel!.title.toString(), style: const TextStyle(fontSize: 16)),
                  Text(_todoModel!.completed.toString(), style: const TextStyle(fontSize: 16)),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
