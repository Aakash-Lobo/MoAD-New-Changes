import 'package:flutter/material.dart';

class FaQ extends StatefulWidget {
  @override
  _FaQState createState() => _FaQState();
}

class _FaQState extends State<FaQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          //       onPressed: () => Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => HomePage()))
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            ExpansionTile(
              title: Text(
                "First Year",
                style: TextStyle(fontSize: 20),
              ),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Text(
                            "Academic Year 2016-17",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Academic Year 2017-18",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Academic Year 2019-20",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ExpansionTile(
              title: Text(
                "Second Year",
                style: TextStyle(fontSize: 20),
              ),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Text(
                            "Academic Year 2016-17",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Academic Year 2017-18",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Academic Year 2019-20",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ExpansionTile(
              title: Text(
                "Third Year",
                style: TextStyle(fontSize: 20),
              ),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Text(
                            "Academic Year 2016-17",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Academic Year 2017-18",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Academic Year 2019-20",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
