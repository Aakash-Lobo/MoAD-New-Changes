import 'package:flutter/material.dart';
import 'package:flutter_application_1/results/result_list.dart';
import 'package:google_fonts/google_fonts.dart';

class SemTwoResult extends StatefulWidget {
  @override
  _SemTwoResult createState() => _SemTwoResult();
}

class _SemTwoResult extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResultList()))),
            backgroundColor: Colors.white,
            title: Text(
              'Semester Two',
              style: GoogleFonts.josefinSans(
                textStyle: const TextStyle(
                  color: Color(0xff164276),
                ),
              ),
            ),
          ),
          body: ListView(children: [
            Container(
              height: 300,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Image.asset(
                      "assets/logo.png",
                      height: 90,
                      width: 90,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, bottom: 50),
                            child: Text(
                              "St Xaviers College",
                              style: GoogleFonts.josefinSans(
                                textStyle: const TextStyle(
                                  color: Color(0xff164276),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 34,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  DataColumn(
                      label: Text('No.',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('Subject',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('Course Code',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('CIA Marks',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('End Sem Marks',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('Total Marks',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('Grade',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('1')),
                    DataCell(Text('MOAD')),
                    DataCell(Text('SITS0402')),
                    DataCell(Text('5')),
                    DataCell(Text('5')),
                    DataCell(Text('10')),
                    DataCell(Text('A')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2')),
                    DataCell(Text('MOAD')),
                    DataCell(Text('SITS0402')),
                    DataCell(Text('5')),
                    DataCell(Text('5')),
                    DataCell(Text('10')),
                    DataCell(Text('A')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('3')),
                    DataCell(Text('MOAD')),
                    DataCell(Text('SITS0402')),
                    DataCell(Text('5')),
                    DataCell(Text('5')),
                    DataCell(Text('10')),
                    DataCell(Text('A')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('4')),
                    DataCell(Text('MOAD')),
                    DataCell(Text('SITS0402')),
                    DataCell(Text('5')),
                    DataCell(Text('5')),
                    DataCell(Text('10')),
                    DataCell(Text('A')),
                  ]),
                ],
              ),
            ),
          ])),
    );
  }
}
