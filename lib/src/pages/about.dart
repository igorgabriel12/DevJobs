import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1b2b39),
        title: Text("About"),
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
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 30.0),
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100.0))),
                                  child: CircleAvatar(
                                      radius: 20,
                                      backgroundImage: NetworkImage(
                                          "https://avatars0.githubusercontent.com/u/15963786?s=460&u=c0be7b89d0cccdbc0aec6c2acb5357c8ad7d1496&v=4"))),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Nome: ",
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
                                "Código: ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[500],
                                ),
                              ),
                              Text(
                                "825.399",
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
                                "Tema: ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[500],
                                ),
                              ),
                              Text(
                                "Visualizador de vagas de empregos para programadores.",
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
                                "Objetivo: ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[500],
                                ),
                              ),
                              Text(
                                "Possibilitar à programadores a visualização de vagas de emprego, disponíveis pela API do github, para que estes possam vem com maior facilidade as vagas e possam obter mais detalhes sobre as mesmas.",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          )),
    );
  }
}
