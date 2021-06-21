import 'dart:async';
import 'package:flutter/material.dart';

class SchedulePage extends StatefulWidget {
  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  double opacity = 0;

  @override
  void initState() {
    super.initState();
    opacity = 0;
    Timer(Duration(seconds: 1), () {
      setState(() {
        opacity = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          fontFamily: "Courgette"
      ),
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("src/img/background3.jpg"), fit: BoxFit.cover,),
              ),
            ),
            Center(
              child: ListView(
                children: [
                  AnimatedOpacity(
                    opacity: opacity,
                    duration: Duration(seconds: 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 50),
                        Text("Detail Acara", style: TextStyle(fontSize: 30, color: Colors.brown)),
                        SizedBox(height: 50),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Akad Nikah', textScaleFactor: 2),
                                SizedBox(height: 30),
                                Icon(Icons.calendar_today_rounded, size: 100, color: Colors.brown),
                                SizedBox(height: 20),
                                Text('Sabtu, 6 Maret 2021', style: TextStyle(color: Colors.brown)),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 30),
                                  child: Divider(color: Colors.black),
                                ),
                                Text('Masjid Agung Surabaya', style: TextStyle(color: Colors.brown)),
                                Text('09.00 - 11.00 WIB', style: TextStyle(color: Colors.brown)),
                                SizedBox(height: 100),
                                Text('Resepsi', textScaleFactor: 2),
                                SizedBox(height: 30),
                                Icon(Icons.map, size: 100, color: Colors.brown),
                                SizedBox(height: 20),
                                Text('Minggu, 7 Maret 2021', style: TextStyle(color: Colors.brown)),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 30),
                                  child: Divider(color: Colors.black),
                                ),
                                Text('Golf Graha Family Surabaya', style: TextStyle(color: Colors.brown)),
                                Text('09.00 - 11.00 WIB', style: TextStyle(color: Colors.brown)),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent,
                            border: Border.all(color: Colors.brown, width: 10),
                          ),
                          height: 750,
                          width: 350,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
