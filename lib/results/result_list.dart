import 'package:flutter/material.dart';
import 'package:flutter_application_1/results/Year/First_Year/sem_one_result.dart';
import 'package:flutter_application_1/results/Year/Third_Year/sem_six_result.dart';

import 'Year/First_Year/sem_two_result.dart';
import 'Year/Second_Year/sem_four_result.dart';
import 'Year/Second_Year/sem_third_result.dart';
import 'Year/Third_Year/sem_five_result.dart';

class ResultList extends StatefulWidget {
  @override
  _ResultListState createState() => _ResultListState();
}

class _ResultListState extends State<ResultList> {
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
                          GestureDetector(
                              child: Text(
                                "Semester 1",
                                style: TextStyle(fontSize: 16),
                              ),
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SemOneResult()))),
                          SizedBox(
                            height: 25,
                          ),
                          GestureDetector(
                              child: Text(
                                "Semester 2",
                                style: TextStyle(fontSize: 16),
                              ),
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SemTwoResult()))),
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
                          GestureDetector(
                              child: Text(
                                "Semester 3",
                                style: TextStyle(fontSize: 16),
                              ),
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SemThreeResult()))),
                          SizedBox(
                            height: 25,
                          ),
                          GestureDetector(
                              child: Text(
                                "Semester 4",
                                style: TextStyle(fontSize: 16),
                              ),
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SemFourResult()))),
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
                          GestureDetector(
                              child: Text(
                                "Semester 5",
                                style: TextStyle(fontSize: 16),
                              ),
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SemFiveResult()))),
                          SizedBox(
                            height: 25,
                          ),
                          GestureDetector(
                              child: Text(
                                "Semester 6",
                                style: TextStyle(fontSize: 16),
                              ),
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SemSixResult()))),
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
