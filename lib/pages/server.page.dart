import 'package:flutter/material.dart';
// import 'package:google_fonts';

class ServerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Server | FireVpn',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(appBar: AppBar(title: Text("klk server"))));
  }
}
