import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String tag;
  const DetailsScreen({Key key, this.tag = ""}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1b2b39),
          title: Text("Details"),
        ),
        body: Container(
            child: Column(
          children: <Widget>[
            Flexible(
                child: Hero(
              tag: tag,
              child: Image.network(
                "https://s2.glbimg.com/Bu6upvmSg6SRv0za635uXphThKo=/620x430/e.glbimg.com/og/ed/f/original/2020/03/28/mercado-livre.jpg",
              ),
            )),
          ],
        )));
  }
}
