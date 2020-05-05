import 'package:flutter/material.dart';

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController txtPeso = TextEditingController();
  TextEditingController txtAltura = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: ['#1b2b39'.toColor(), '#182836'.toColor()]),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 90.0),
              child: Container(
                  height: 150,
                  child: Image.asset(
                    "assets/images/github_logo.png",
                    // scale: 1.8,
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 5.0,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                height: 200.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.mail,
                            size: 30,
                            color: Colors.red[700],
                          ),
                          // Container(
                          //   padding: EdgeInsets.symmetric(vertical: 10),
                          //   child: TextField(
                          //     decoration: InputDecoration(
                          //         border: InputBorder.none,
                          //         hintText: 'Enter a search term'),
                          //   ),
                          // )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: Text("Create account?"),
            ),
          ],
        ),
      ),
    ));
  }

  //Métodos
  // _entradaDados(rotulo, controle) {
  //   return Container(
  //     padding: EdgeInsets.symmetric(vertical: 10),
  //     child: TextField(
  //       decoration: InputDecoration(
  //           border: InputBorder.none, hintText: 'Enter a search term'),
  //     ),
  //   );
  // } //
}

//    TextField(
//     keyboardType: TextInputType.emailAddress,
//     style: TextStyle(fontSize: 24, color: Colors.red[800]),
//     decoration: InputDecoration(
//         icon: Icon(Icons.arrow_right, color: Colors.red[800]),
//         labelText: rotulo,
//         labelStyle: TextStyle(color: Colors.red[800], fontSize: 16)),
//     controller: controle,
//     // validator: (value) {
//     //   return null;
//     // },
//   ),
// );
