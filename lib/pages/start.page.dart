import 'package:flutter/material.dart';
import 'package:flutter_softvpn/widgets/safe.widget.dart';

class StartApp extends StatefulWidget {
  StartAppState createState() => new StartAppState();
}

class StartAppState extends State<StartApp> {
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.orange[900],
                title: Text("Verificando conexión")),
            body: Safe(Center(child: this.spinner()))));
  }

  CircularProgressIndicator spinner() {
    return CircularProgressIndicator(
      color: Colors.orange[800],
    );
  }
}
