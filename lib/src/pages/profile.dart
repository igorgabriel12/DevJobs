import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF1b2b39),
        title: Text("Profile"),
      ),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF1b2b39), Color(0xFF182836)]),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                // blurRadius: 5.0,
                              ),
                            ],
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(100.0))),
                        child: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage("assets/images/15963786.png"))),
                  ],
                ),
              ),
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                  ),
                  // margin: const EdgeInsets.only(top: 220),
                  // height: 260,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              "Your Profile",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Name: ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[500],
                                  ),
                                ),
                                Text(
                                  "Igor Gabriel Pereira",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "E-mail: ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[500],
                                  ),
                                ),
                                Text(
                                  "igor.gabriel.pereira@email.com",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Address: ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[500],
                                  ),
                                ),
                                Text(
                                  "Ribeirão Preto, SP",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Skills: ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[500],
                                  ),
                                ),
                                Text(
                                  "JavaScript, Java, C++, PHP, Dart",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "About Me: ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[500],
                                  ),
                                ),
                                Text(
                                  "Mussum Ipsum, cacilds vidis litrenean aliquam molestie leo, vitae iaculis nisl. Mais vale um bebadis conhecidiss, que um alcoolatra anonimis. Suco de cevadiss deixa as pessoas mais interessantis.",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              )
            ],
          )),
    );
  }
}
