import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    //  theme: _buildShrineTheme(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _value = 1;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          for (int i = 1; i <= 5; i++)
            ListTile(
              title: Text(
                'Radio $i',
                style: Theme.of(context).textTheme.subtitle1.copyWith(color: i == 5 ? Colors.black38 : Colors.greenAccent),
              ),
              leading: Radio(
                value: i,
                groupValue: _value,
                onChanged: i == 5 ? null : (int value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
            ),
        ],
      ),
    );
  }
}