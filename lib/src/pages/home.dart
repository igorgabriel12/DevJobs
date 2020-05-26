import 'package:flutter/material.dart';
import '../components/CardWidget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF1b2b39),
        title: Text("Home"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // setState(() {
              //   txtPeso.text = "";
              //   txtAltura.text = "";
              //   _resultado = "";
              // });

              //print("Icon pressionado!");
            },
          ),
        ],
      ),
      body: CarList(),
    );
  }
}
