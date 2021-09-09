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
              SeparatedWidget(0, 5),
              this.textOver("Recomendation"),
              FadeInUp(
                  from: 13,
                  duration: Duration(milliseconds: 300),
                  child: this
                      .tile("Belgium", "assets/images/countries/belgium.png")),
              FadeInUp(
                  from: 13,
                  duration: Duration(milliseconds: 300),
                  child: this.tile("United Kingdom",
                      "assets/images/countries/united-kingdom.png")),
              SeparatedWidget(0, 10),
              this.textOver("From server"),
              FadeInUp(
                  from: 13,
                  duration: Duration(milliseconds: 300),
                  child: this.tile(
                      "Netherland", "assets/images/countries/netherlands.png")),
              FadeInUp(
                  from: 13,
                  duration: Duration(milliseconds: 300),
                  child:
                      this.tile("Japan", "assets/images/countries/japan.png")),
              FadeInUp(
                  from: 13,
                  duration: Duration(milliseconds: 300),
                  child: this.tile("United States",
                      "assets/images/countries/united-states.png")),
              this.premiumButton(context)
            ])));
  }

  void spinner(contextok) {
    showDialog(
        context: contextok,
        builder: (e) {
          return AlertDialog(
              elevation: 0,
              backgroundColor: Colors.grey[100],
              title: FadeInUp(
                from: 2,
                child: Center(
                    child: Text("Getting Premium",
                        style: TextStyle(
                            color: Colors.pink[500], fontFamily: "ubuntu"))),
              ),
              content: ZoomIn(
                  child: Container(
                      width: 30,
                      height: 228,
                      child:
                          CircularProgressIndicator(color: Colors.pink[500]))),
              actions: <Widget>[
                FlatButton(
                    color: Colors.pink[400],
                    onPressed: () {
                      Navigator.pop(contextok);
                    },
                    minWidth: 300,
                    child: Text("Cancel",
                        style: TextStyle(
                            color: Colors.white, fontFamily: "ubuntu"))),
                FlatButton(
                    onPressed: () {
                      Navigator.pop(contextok);
                      this.spinner(contextok);
                    },
                    minWidth: 300,
                    child: Text("Retry"))
              ]);
        });
  }

  Widget premiumButton(context) {
    return GestureDetector(
        child: Container(
            width: 280.0,
            margin: EdgeInsets.only(left: 22, right: 22, top: 10),
            height: 50.0,
            child: TextButton(
                onPressed: () {
                  this.spinner(context);
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.star_border, color: Colors.white, size: 30),
                      SeparatedWidget(8, 0),
                      Text("Get premium",
                          style: TextStyle(
                              fontFamily: "ubuntu",
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              color: Colors.white))
                    ])),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red[400])));
  }

  Widget textOver(String name) {
    return Container(
        margin: EdgeInsets.only(left: 22),
        child: Text(name,
            style: GoogleFonts.ubuntu(
                color: Colors.grey[500],
                fontSize: 18,
                fontWeight: FontWeight.w500)));
  }

  Widget tile(String name, String image) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.only(top: 12, left: 22, right: 22),
        child: ListTile(
            title: Text(name,
                style: GoogleFonts.ubuntu(
                    color: Colors.grey[900],
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            onTap: () {},
            leading: Container(
                width: 35,
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
                prefixIcon:
                    Icon(Icons.search, size: 28, color: Colors.pink[400]),
                border: OutlineInputBorder(
                    gapPadding: 10, borderRadius: BorderRadius.circular(40)),
                fillColor: Colors.grey[300],
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
