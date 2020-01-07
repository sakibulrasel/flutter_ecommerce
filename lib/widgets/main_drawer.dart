import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.green,
            height: (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.3,
          )
        ],
      ),
    );
  }
}
