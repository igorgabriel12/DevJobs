import 'package:dev_jobs/src/model/Vaga.dart';
import 'package:flutter/material.dart';
import '../components/DrawerButtonWidget.dart';
import 'package:dev_jobs/src/pages/about.dart';
import 'package:dev_jobs/src/pages/profile.dart';
import 'package:dev_jobs/src/pages/login.dart';
import 'package:dev_jobs/src/pages/details.dart';

class HomeScreen extends StatelessWidget {
  final Future<List<Vaga>> vagas;

  HomeScreen({Key key, this.vagas}) : super(key: key);
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
      body: Container(
        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: FutureBuilder<List<Vaga>>(
            future: vagas,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                //apresentar o resultado
                return ListView.separated(
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailsScreen(tag: "teste $index", vaga: {
                                  'title': snapshot.data[index].title,
                                  'company': snapshot.data[index].company,
                                  'created_at': snapshot.data[index].created_at,
                                  'location': snapshot.data[index].location,
                                  'type': snapshot.data[index].type,
                                  'url': snapshot.data[index].url,
                                  'company_url':
                                      snapshot.data[index].company_url,
                                  'description':
                                      snapshot.data[index].description,
                                })),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Row(children: <Widget>[
                        Container(
                            height: 55.0,
                            child: Hero(
                              tag: "teste $index",
                              child: Image.asset(
                                "assets/images/Clock.jpg",
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  constraints: BoxConstraints(maxWidth: 150),
                                  child: Text(
                                    snapshot.data[index].company,
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                Container(
                                  constraints: BoxConstraints(maxWidth: 150),
                                  child: Text(
                                    snapshot.data[index].title,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Container(
                                    child: Text(
                                  snapshot.data[index].location,
                                  style: TextStyle(fontSize: 14),
                                ))
                              ],
                            )),
                        Flexible(
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                              Text(
                                snapshot.data[index].created_at,
                                style: TextStyle(fontSize: 14),
                              ),
                            ]))
                      ]),
                    ),
                  ),
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey[200],
                    thickness: 1,
                  ),
                  itemCount: snapshot.data.length,
                );
              } else if (snapshot.hasError) {
                return Center(child: Text("ERRO: ${snapshot.error}"));
              }
              return Center(child: CircularProgressIndicator());
            }),
      ),
    );
  }
}
