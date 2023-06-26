import 'package:flutter/material.dart';

class TipsnTrickListViewScreen extends StatefulWidget {
  const TipsnTrickListViewScreen({Key? key}) : super(key: key);


  @override
  _TipsnTrickListViewScreenState createState() =>
      _TipsnTrickListViewScreenState();
}

class _TipsnTrickListViewScreenState extends State<TipsnTrickListViewScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TEST"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),

          ],
        ),
      ),
    );
  }
}
