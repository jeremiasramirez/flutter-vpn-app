import 'package:flutter/material.dart';

void replaceRoute(BuildContext context, String name) {
  Navigator.pushReplacementNamed(context, name);
}

void navigate(BuildContext context, String name) {
  Navigator.pushNamed(context, name);
}

void popRoute(BuildContext context) {
  Navigator.pop(context);
}
