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

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

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
              padding: EdgeInsets.only(top: 90.0, bottom: 30.0),
              child: Container(
                  height: 150.0,
                  child: Image.asset(
                    "assets/images/github_logo.png",
                    // scale: 1.8,
                  )),
            ),
            Padding(
                padding: EdgeInsets.only(left: 40.0, bottom: 10.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                    ),
                  ],
                )),
            SizedBox(
                height: 200,
                child:
                    Stack(alignment: Alignment.bottomCenter, children: <Widget>[
                  Container(
                    height: 235,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              // blurRadius: 5.0,
                            ),
                          ],
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      height: 180.0,
                      margin: EdgeInsets.only(bottom: 24.0),
                      child: Column(
                        children: <Widget>[
                          _entradaDados('E-mail', email, Icons.mail),
                          _entradaDados('Password', password, Icons.lock),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("Container clicked");
                      //  if (_formKey.currentState.validate()) {
                      //   setState(() {
                      //     double peso = double.parse(txtPeso.text);
                      //     double altura = double.parse(txtAltura.text);
                      //     double imc = peso / pow(altura, 2);
                      //     _resultado = "Resultado\nIMC= ${imc}";
                      //   });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 1.0,
                            ),
                          ],
                          color: "#4A65B0".toColor(),
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.0))),
                      height: 45.0,
                      width: 200.0,
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  )
                ])),
            InkWell(
              onTap: () {
                print("Container clicked");
                //  if (_formKey.currentState.validate()) {
                //   setState(() {
                //     double peso = double.parse(txtPeso.text);
                //     double altura = double.parse(txtAltura.text);
                //     double imc = peso / pow(altura, 2);
                //     _resultado = "Resultado\nIMC= ${imc}";
                //   });
              },
              child: Padding(
                padding: EdgeInsets.only(top: 70.0),
                child: Text(
                  "Create account?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  //Métodos
  _entradaDados(label, controle, icon) {
    return Row(
      children: <Widget>[
        Expanded(
            child: Container(
          padding:
              EdgeInsets.only(top: label == 'E-mail' ? 15.0 : 0, left: 20.0),
          child: TextFormField(
            controller: controle,
            validator: (value) {
              return (value.isEmpty) ? "Informe o valor" : null;
            },
            decoration: InputDecoration(
                icon: Icon(
                  icon,
                  size: 22,
                  color: "#4A65B0".toColor(),
                ),
                border: InputBorder.none,
                hintText: label),
          ),
        ))
      ],
    );
  }
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
