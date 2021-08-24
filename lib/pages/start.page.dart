import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_softvpn/widgets/route.widget.dart';
import 'package:flutter_softvpn/widgets/safe.widget.dart';

class StartApp extends StatefulWidget {
  StartAppState createState() => new StartAppState();
}

class StartAppState extends State<StartApp> {
  double valueSpinner = .8;
  Widget build(context) {
    this.accelerateSpinner();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: Safe(Center(child: this.spinner()))));
  }

  Widget spinner() {
    return Roulette(
        duration: Duration(seconds: 4),
        child: CircularProgressIndicator(
          value: this.valueSpinner,
          color: Colors.orange[800],
        ));
  }

  void accelerateSpinner() {
    Future.delayed(Duration(milliseconds: 3100), () {
      return true;
    }).then((value) {
      if (value) {
        setState(() {
          this.valueSpinner = 1;
        });

        replaceRoute(context, "home");
      }
    });
  }
}
