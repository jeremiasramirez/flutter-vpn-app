import 'package:flutter/material.dart';

class SeparatedWidget extends StatelessWidget {
  double x = 0;
  double y = 0;
  SeparatedWidget(this.x, this.y);
  SizedBox build(BuildContext context) {
    return SizedBox(width: this.x, height: this.y);
  }
}
