import 'package:animation/quotes_page.dart';
import 'package:animation/schedule_page.dart';
import 'package:animation/wish_page.dart';
import 'package:flutter/material.dart';
import 'information_page.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          extendBody: true,
          backgroundColor: Colors.transparent,
          bottomNavigationBar: menu(),
          body: TabBarView(
            children: [
              Container(child: InformationPage()),
              Container(child: SchedulePage()),
              Container(child: WishPage()),
              Container(child: QuotesPage()),
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
        labelColor: Colors.brown,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.brown,
        tabs: [
          Tab(icon: Icon(Icons.list)),
          Tab(icon: Icon(Icons.access_time_sharp)),
          Tab(icon: Icon(Icons.add_comment)),
          Tab(icon: Icon(Icons.speaker_notes_rounded)),
        ],
      ),
    );
  }
}

