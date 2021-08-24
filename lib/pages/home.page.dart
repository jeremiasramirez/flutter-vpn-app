import 'package:flutter/material.dart';
import 'package:flutter_softvpn/pages/start.page.dart';
// import 'package:google_fonts';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home | FireVpn',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      routes: {"start": (context) => StartApp()},
      initialRoute: "start",
    );
  }
}
