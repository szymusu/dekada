import 'package:dekada/tab_navigation/multi_tab_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DekadaApp());
}

class DekadaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.pink[900],
      ),
      home: MultiTabView(),
    );
  }
}
