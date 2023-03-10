import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  int points = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Row(children: [
      ///Container for Content
      Expanded(
        child: Container(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text("Counter"),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blueAccent)),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Event List",
                style: TextStyle(
                    fontSize: 18,
                    height: 1.2,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w900,
                    color: Colors.blueGrey[200]),
              ),

              ///For spacing
              SizedBox(
                height: 4,
              ),

              Row(
                children: [
                  ///Text
                  Text(
                    "Attended",
                    style: TextStyle(
                      fontSize: 50,
                      height: 1.2,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[800],
                    ),
                  ),

                  Spacer(),
                ],
              ),

              ///List of all the task
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    ///Change appearance of Completed Task
                    ///Say index 1 is completed
                    return Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueGrey),
                          color: index == 1
                              ? Colors.purple[400]
                              : Colors.transparent),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///Show completed check
                          ///Task Title
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  "Lorem Ipsum",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: index == 1
                                          ? Colors.white
                                          : Colors.grey[800]),
                                ),
                              ),

                              ///For Space

                              SizedBox(
                                width: 4,
                              ),

                              index == 1
                                  ? Icon(
                                      Icons.check_circle,
                                      color: Colors.white,
                                    )
                                  : Container()
                            ],
                          ),

                          ///For Space
                          SizedBox(
                            height: 8,
                          ),

                          ///Task Detail
                          Row(
                            children: [
                              Text(
                                "18 NOV 2019",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: index == 1
                                        ? Colors.white70
                                        : Colors.grey[500]),
                              ),
                              Spacer(),
                              index == 1
                                  ? Text(
                                      "ATTENDED",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 12,
                                          color: Colors.white),
                                    )
                                  : Text(
                                      "$points" + " ECC",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: index == 1
                                              ? Colors.white70
                                              : Colors.grey[500]),
                                    ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                    height: 16,
                    color: Colors.transparent,
                  ),
                  itemCount: 6,
                ),
              ),

              ///For spacing
              SizedBox(
                height: 16,
              ),

              ///Button for add new task
            ],
          ),
        ),
      ),
    ])));
  }
}
