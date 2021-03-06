import 'package:flutter/material.dart';

abstract class NavigatorUtil {
  static navigate(BuildContext context, String route) {
    Navigator.of(context).pushNamedAndRemoveUntil(route, (r) => false);
  }
}
