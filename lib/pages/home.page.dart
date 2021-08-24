import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

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
              FadeInUp(
                from: 20,
                child: Container(
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.only(top: 18, bottom: 18),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12)),
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
              )
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
}
