import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_softvpn/widgets/separated.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Home | FireVpn',
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              title: this.textOrange("Fire VPN"),
              centerTitle: true,
              backgroundColor: Colors.transparent,
            ),
            body: Center(
                child: Column(children: [
              this.containIp(),
              this.timingVpn(),
              this.activateVpn(),
              this.selectedCountry()
            ]))));
  }

  Text textOrange(String name) {
    return Text(name,
        style: TextStyle(
            color: Colors.orange[800],
            fontSize: 21,
            fontWeight: FontWeight.bold));
  }

  Text textOpacity(String name) {
    return Text(name,
        style: TextStyle(
            color: Colors.grey[600],
            fontSize: 17,
            fontWeight: FontWeight.w500));
  }

  FadeInUp containIp() {
    return FadeInUp(
      from: 15,
      child: Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.only(top: 18, bottom: 18),
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
            child: Column(children: [
          SeparatedWidget(0, 16),
          this.textOpacity("Connetion time"),
          SeparatedWidget(0, 10),
          Text("00:06",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500)),
          SeparatedWidget(0, 25),
        ])));
  }

  Widget selectedCountry() {
    return Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(20)),
        child: ListTile(
            leading: Container(
                child: Image(
                    image: AssetImage("assets/images/countries/belgium.png"))),
            title: Text("United states")));
  }

  Widget activateVpn() {
    return Container(
        width: 160,
        height: 160,
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(125)),
        child: Center(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(110),
              child: ZoomIn(
                duration: Duration(seconds: 1),
                child: TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 140,
                      height: 140,
                      child: Icon(Icons.power_settings_new,
                          size: 80, color: Colors.white),
                      decoration: BoxDecoration(
                          color: Colors.orange[800],
                          borderRadius: BorderRadius.circular(125)),
                    )),
              )),
        ));
  }
}
