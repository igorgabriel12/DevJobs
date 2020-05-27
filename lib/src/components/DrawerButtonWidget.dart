import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  final String label;
  final Icon icon;
  final Function navigate;

  DrawerButton(this.label, this.icon, this.navigate) : super();

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: navigate,
        child: Container(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: <Widget>[
                icon,
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(label,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
