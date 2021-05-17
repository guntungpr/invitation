import 'package:animation/second_page.dart';
import 'package:animation/third_page.dart';
import 'package:flutter/material.dart';
import 'first_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          extendBody: true,
          backgroundColor: Colors.transparent,
          bottomNavigationBar: menu(),
          body: TabBarView(
            children: [
              Container(child: FirstPage()),
              Container(child: SecondPage()),
              Container(child: ThirdPage()),
            ],
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return Container(
      color: Colors.transparent,
      child: TabBar(
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.blue,
        tabs: [
          Tab(icon: Icon(Icons.list)),
          Tab(icon: Icon(Icons.speaker_notes_rounded)),
          Tab(icon: Icon(Icons.access_time_sharp)),
        ],
      ),
    );
  }
}
