import 'package:flutter/material.dart';
import 'package:flutter_softvpn/widgets/route.widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ServerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Server | FireVpn',
        home: Scaffold(appBar: this.appBars(context)));
  }

  AppBar appBars(context) {
    return AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        title: Text("Server",
            style: GoogleFonts.ubuntu(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.w500)),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            navigate(context, "home");
          },
          child: Icon(Icons.arrow_back_ios, size: 28, color: Colors.black),
        ));
  }
}
