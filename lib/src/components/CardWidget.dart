import 'package:flutter/material.dart';
import 'package:dev_jobs/src/pages/details.dart';

class CarList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: ListView.separated(
          itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                              tag: "teste $index",
                            )),
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
                              child: Text(
                                "Nome da empresa",
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Título da vaga",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                                child: Text(
                              "Local da vaga",
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
                            "12/09/2010",
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
          itemCount: 10),
    );
  }
}
