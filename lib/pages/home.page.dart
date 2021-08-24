import 'package:flutter/material.dart';
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
        home: Scaffold(appBar: AppBar(title: Text("klk home"))));
  }
}
