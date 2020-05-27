import 'package:flutter/material.dart';
import '../components/CardWidget.dart';
import '../components/DrawerButtonWidget.dart';
import 'package:dev_jobs/src/pages/about.dart';
import 'package:dev_jobs/src/pages/profile.dart';
import 'package:dev_jobs/src/pages/login.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              height: 55.0,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              color: Color(0xFF1b2b39),
              child: Row(
                children: <Widget>[
                  Container(
                      height: 35.0,
                      child: Image.asset(
                        "assets/images/github_logo.png",
                        scale: 1.8,
                      )),
                  SizedBox(width: 10),
                  Text(
                    "GitJobs",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            DrawerButton("Profile", Icon(Icons.face), () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            }),
            DrawerButton("About", Icon(Icons.device_unknown), () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutScreen()),
              );
            }),
            DrawerButton("Exit App", Icon(Icons.exit_to_app), () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AlertDialog(
                          title: Text("Atenção!"),
                          content: Text(
                              "Tem certeza que deseja sair do aplicativo?"),
                          actions: [
                            FlatButton(onPressed: () {}, child: Text("Cancel")),
                            FlatButton(
                                onPressed: () {
                                  LoginScreen();
                                },
                                child: Text("Yes"))
                          ],
                          // elevation: 5,
                        )),
              );
            })
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
