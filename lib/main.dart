import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
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
        leading: Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
        centerTitle: true,
        title: Icon(
          Icons.face,
          color: Colors.green,
        ),
        actions: <Widget>[
          Icon(
            Icons.menu,
            color: Colors.grey,
          )
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
                child: Center(
                  child: Text(
                    'Get coaches',
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 100.0, 25.0, 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(blurRadius: 2.0, color: Colors.grey)
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: Text('YOU HAVE',
                              style: TextStyle(
                                  fontFamily: 'Quicksand', fontSize: 14.0)),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                          child: Text('206',
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 100.0,
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(right: 25.0),
                      child: FlatButton(
                        padding: EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 20.0),
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        onPressed: () {},
                        child: Text(
                          'Buy more',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 14.0,
                              color: Colors.green),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'MY COACHES',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 14.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'VIEW PAST SESSION',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 14.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            primary: false,
            shrinkWrap: true,
            children: <Widget>[
              _buildCard('Kepa Arrizabalaga', 'images/kepa.PNG', 'Available', 1),
              _buildCard('Fikayo Tomori', 'images/tomori.PNG', 'Away', 2),
              _buildCard('NGolo Kante', 'images/kante.PNG', 'Away', 3),
              _buildCard('Mason Mount', 'images/mont.PNG', 'Available', 4),
              _buildCard('Cristian Pulisic', 'images/pulisic.PNG', 'Available', 5),
              _buildCard('Tamy Abraham', 'images/tamy.PNG', 'Away', 6),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String image, String status, int cardIndex) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 4.0,
        child: Column(
          children: <Widget>[
            SizedBox(height: 30.0),
            Stack(
              children: <Widget>[
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.green,
                      image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40.0),
                  height: 15.0,
                  width: 15.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: status == 'Away' ? Colors.amber : Colors.green,
                    border: Border.all(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 2.0
                    )
                  ),
                )
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              name,
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0),
            ),
            SizedBox(height: 5.0),
            Text(
              status,
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: status == 'Away' ? Colors.grey : Colors.green,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
                child: Center(
                  child: InkWell(
                    onTap: (){},
                    child: Text(
                      'Requset',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 14.0,
                        color: Colors.white
                      ),
                    ),
                  ),
                )
              ),
            )
          ],
        ),
        margin: cardIndex.isEven
            ? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0)
            : EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0));
  }
}
