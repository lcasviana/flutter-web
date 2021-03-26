import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/shell.widget.dart';

class EnvironmentPage extends StatefulWidget {
  @override
  _EnvironmentStatePage createState() => _EnvironmentStatePage();
}

class _EnvironmentStatePage extends State<EnvironmentPage> {
  @override
  void initState() {
    log('EnvironmentPage.initState()');
    super.initState();
  }

  @override
  void dispose() {
    log('EnvironmentPage.dispose()');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Shell(
      'Debug vs Release',
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Estou rodando em ${kReleaseMode ? 'RELEASE' : 'DEBUG'} mode!',
              style: TextStyle(fontSize: 32),
            ),
            Text(
              'Estou rodando em ${kDebugMode ? 'DEBUG' : 'RELEASE'} mode!',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
