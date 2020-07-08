import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dev_jobs/src/service/VagaService.dart';
import 'package:flutter/material.dart';
import 'package:dev_jobs/src/pages/home.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreen createState() => _SignInScreen();
}

class _SignInScreen extends State<SignInScreen> {
  var db = Firestore.instance;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm_password = TextEditingController();
  TextEditingController aboutme = TextEditingController();
  TextEditingController skills = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1b2b39),
        title: Text("SignIn"),
      ),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF1b2b39), Color(0xFF182836)]),
          ),
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                ),
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Column(
                      children: <Widget>[
                        // Padding(
                        //   padding:
                        //       const EdgeInsets.only(top: 20.0, bottom: 30.0),
                        //   child: Column(
                        //     children: <Widget>[
                        //       Container(
                        //           height: 120.0,
                        //           width: 120.0,
                        //           decoration: BoxDecoration(
                        //               boxShadow: [
                        //                 BoxShadow(
                        //                   color: Colors.black,
                        //                   // blurRadius: 5.0,
                        //                 ),
                        //               ],
                        //               color: Colors.white,
                        //               borderRadius: BorderRadius.all(
                        //                   Radius.circular(100.0))),
                        //           child: Icon(Icons.add_a_photo)),
                        //     ],
                        //   ),
                        // ),
                        Column(
                          children: <Widget>[
                            _entradaDados('Name', name, Icons.face),
                            _entradaDados('E-mail', email, Icons.mail),
                            _entradaDados(
                                'Skills', skills, Icons.fitness_center),
                            _entradaDados(
                                'About', aboutme, Icons.free_breakfast),
                            _entradaDados('Password', password, Icons.lock),
                            _entradaDados('Confirm Password', confirm_password,
                                Icons.lock),
                          ],
                        ),
                        SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
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
                                    color: Color(0xFF4A65B0),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(25.0))),
                                height: 45.0,
                                width: 100.0,
                                child: Text(
                                  "Back",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _saveUser();
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
                                    color: Color(0xFF1b2b39),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(25.0))),
                                height: 45.0,
                                width: 200.0,
                                child: Text(
                                  "Create Account",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ],
          )),
    );
  }

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
                  color: Color(0xFF4A65B0),
                ),
                border: InputBorder.none,
                hintText: label),
          ),
        ))
      ],
    );
  }

  _saveUser() async {
    if (password.text == confirm_password.text) {
      await db.collection("users").document(email.text).setData({
        "name": name.text,
        "email": email.text,
        "aboutme": aboutme.text,
        "skills": skills.text,
        "password": password.text
      });
      print("criou");
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomeScreen(vagas: VagaService().getVagas())),
      );
    }
  }
}
