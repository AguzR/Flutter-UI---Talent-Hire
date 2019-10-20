import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Talent Hire',
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.grey,),
        centerTitle: true,
        title: Icon(Icons.face, color: Colors.green,),
        actions: <Widget>[
          Icon(Icons.dehaze, color: Colors.grey,)
        ],
      ),

      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                color: Colors.white,
                height: 100.0,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Get coaches',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20.0
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}