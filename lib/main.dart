import 'package:flutter/material.dart';

void main() {
  runApp(pointsCouter());
}

class pointsCouter extends StatefulWidget {
  @override
  State<pointsCouter> createState() => _pointsCouterState();
}

class _pointsCouterState extends State<pointsCouter> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Projet 2",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Points Counter",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      Text(
                        "Team A ",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$teamAPoints",
                        style: TextStyle(
                            fontSize: 150, fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints = teamAPoints + 1;
                            });
                          },
                          child: Text("Add 1 Point",
                              style: TextStyle(fontSize: 18)),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              minimumSize: Size(150, 50),
                              shape: BeveledRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2))))),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints = teamAPoints + 2;
                            });
                          },
                          child: Text("Add 2 Point",
                              style: TextStyle(fontSize: 18)),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              minimumSize: Size(150, 50),
                              shape: BeveledRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2))))),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamAPoints = teamAPoints + 3;
                            });
                          },
                          child: Text("Add 3 Point",
                              style: TextStyle(fontSize: 18)),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              minimumSize: Size(150, 50),
                              shape: BeveledRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2))))),
                      Spacer(
                        flex: 6,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey[300],
                    endIndent: 80,
                    indent: 30,
                    thickness: 3,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      Text(
                        " Team B",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$teamBPoints",
                        style: TextStyle(
                            fontSize: 150, fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints = teamBPoints + 1;
                            });
                          },
                          child: Text("Add 1 Point",
                              style: TextStyle(fontSize: 18)),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              minimumSize: Size(150, 50),
                              shape: BeveledRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2))))),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints = teamBPoints + 2;
                            });
                          },
                          child: Text("Add 2 Point",
                              style: TextStyle(fontSize: 18)),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              minimumSize: Size(150, 50),
                              shape: BeveledRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2))))),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBPoints = teamBPoints + 3;
                            });
                          },
                          child: Text("Add 3 Point",
                              style: TextStyle(fontSize: 18)),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.black,
                              minimumSize: Size(150, 50),
                              shape: BeveledRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2))))),
                      Spacer(
                        flex: 6,
                      )
                    ],
                  ),
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamBPoints = 0;
                  teamAPoints = 0;
                });
              },
              child: Text("Reset",
                  style: TextStyle(fontSize: 18, color: Colors.black)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(120, 40),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2)))),
            ),
          ],
        ),
      ),
    );
  }
}
