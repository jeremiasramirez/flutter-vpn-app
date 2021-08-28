import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_softvpn/widgets/route.widget.dart';
import 'package:flutter_softvpn/widgets/separated.widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ServerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Server | FireVpn',
        home: Scaffold(
            appBar: this.appBars(context),
            body: ListView(children: [
              this.searchLocation(),
              SeparatedWidget(0, 10),
              BounceInLeft(child: this.textOver("Recomendation")),
              BounceInLeft(
                  child: this
                      .tile("Belgium", "assets/images/countries/belgium.png")),
              BounceInLeft(
                  child: this.tile("United Kingdom",
                      "assets/images/countries/united-kingdom.png")),
            ])));
  }

  Widget textOver(String name) {
    return Container(
        margin: EdgeInsets.only(left: 14),
        child: Text(name,
            style: GoogleFonts.ubuntu(
                color: Colors.grey[400],
                fontSize: 18,
                fontWeight: FontWeight.w500)));
  }

  Widget tile(String name, String image) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.only(top: 12, left: 10, right: 10),
        child: ListTile(
            title: Text(name,
                style: GoogleFonts.ubuntu(
                    color: Colors.grey[900],
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            onTap: () {},
            leading: Container(
                width: 40,
                height: 40,
                child: ClipRRect(
                    child:
                        Image(width: 30, height: 30, image: AssetImage(image)),
                    borderRadius: BorderRadius.circular(10))),
            trailing: Icon(Icons.local_fire_department, color: Colors.orange)));
  }

  Widget searchLocation() {
    return Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
        child: TextField(
            decoration: InputDecoration(
                hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w600),
                prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
                border: OutlineInputBorder(
                    gapPadding: 10, borderRadius: BorderRadius.circular(40)),
                fillColor: Colors.white,
                focusColor: Colors.grey,
                hintText: 'Search location')));
  }

  AppBar appBars(context) {
    return AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        title: Text("Server",
            style: GoogleFonts.ubuntu(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.w500)),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            popRoute(context);
          },
          child: Icon(Icons.arrow_back_ios, size: 28, color: Colors.black),
        ));
  }
}
