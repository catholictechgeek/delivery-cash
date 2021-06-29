import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MonthSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(),
        body: Center(
            child:
                Column(children: [Text("Monthy Cash Summary"), ListView()])));
  }
}
