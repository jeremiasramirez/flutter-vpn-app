import 'package:flutter/material.dart';

class Safe extends StatelessWidget {
  Widget safe;
  Safe(this.safe);
  SafeArea build(context) {
    return SafeArea(child: safe);
  }
}
