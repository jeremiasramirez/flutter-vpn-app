import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_softvpn/widgets/route.widget.dart';
import 'package:flutter_softvpn/widgets/separated.widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Home | FireVpn',
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              title: Text("Fire VPN",
                  style: GoogleFonts.ubuntu(
                      color: Colors.orange[800],
                      fontSize: 25,
                      fontWeight: FontWeight.w700)),
              centerTitle: true,
              backgroundColor: Colors.transparent,
            ),
            body: ListView(physics: ScrollPhysics(), children: [
              Center(
                  child: Column(children: [
                this.containIp(),
                this.timingVpn(),
                SeparatedWidget(0, 10),
                this.activateVpn(),
                this.selectedCountry(context, "server"),
                SeparatedWidget(0, 18),
                this.statistic()
              ]))
            ])));
  }

  Text textOrange(String name) {
    return Text(name,
        style: GoogleFonts.ubuntu(
            color: Colors.orange[800],
            fontSize: 20,
            fontWeight: FontWeight.w600));
  }

  Text textOpacity(String name) {
    return Text(name,
        style: GoogleFonts.ubuntu(
            color: Colors.grey[500],
            fontSize: 17,
            fontWeight: FontWeight.w500));
  }

  FadeInUp containIp() {
    return FadeInUp(
      from: 15,
      child: Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.only(top: 10, bottom: 18),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  this.textOpacity("Status"),
                  this.textOrange("Connected"),
                ],
              ),
              Column(
                children: [
                  this.textOpacity("Your IP"),
                  this.textOrange("194.124.155.188"),
                ],
              )
            ],
          )),
    );
  }

  Widget timingVpn() {
    return FadeInUp(
        from: 30,
        child: Container(
            decoration: BoxDecoration(
                // color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15)),
            padding: EdgeInsets.all(0),
            width: 300,
            child: Column(children: [
              SeparatedWidget(0, 13),
              this.textOpacity("Connection time"),
              SeparatedWidget(0, 8),
              Text("00:06",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500)),
              SeparatedWidget(0, 10),
            ])));
  }

  Widget selectedCountry(BuildContext context, String name) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: FadeInUp(
            from: 80,
            delay: Duration(milliseconds: 300),
            child: Container(
                margin: EdgeInsets.only(top: 43, left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                    // selectedTileColor: Colors.white,
                    onTap: () {
                      navigate(context, name);
                    },
                    // tileColor: Colors.white,
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[800],
                    ),
                    leading: Container(
                        child: Image(
                            image: AssetImage(
                                "assets/images/countries/united-states.png"))),
                    title: Text(
                      "United states",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )))));
  }

  Widget statistic() {
    return FadeInUp(
      from: 105,
      delay: Duration(milliseconds: 500),
      child: Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.only(top: 10, bottom: 18),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_upward, color: Colors.red),
                      SeparatedWidget(8, 0),
                      Column(children: [
                        this.textOpacity("Upload"),
                        this.textOrange("124 Mb/s")
                      ])
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_downward, color: Colors.pink[800]),
                      SeparatedWidget(8, 0),
                      Column(children: [
                        this.textOpacity("Download"),
                        this.textOrange("154 Mb/s")
                      ])
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }

  Widget activateVpn() {
    return ZoomIn(
        duration: Duration(milliseconds: 500),
        child: Container(
            width: 165,
            height: 165,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.orange[800],
                borderRadius: BorderRadius.circular(100)),
            child: Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(125)),
              child: Center(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(110),
                child: TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 150,
                      height: 150,
                      child: Icon(Icons.power_settings_new,
                          size: 80, color: Colors.white),
                      decoration: BoxDecoration(
                          color: Colors.orange[800],
                          borderRadius: BorderRadius.circular(125)),
                    )),
              )),
            )));
  }
}
