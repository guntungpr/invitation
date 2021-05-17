import 'dart:async';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
                  image: DecorationImage(image: AssetImage("src/img/notes.jpg"), fit: BoxFit.cover,),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: AnimatedOpacity(
                  opacity: opacity,
                  duration: Duration(seconds: 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("     Apa yang membuat pernikahan orang tua dulu langgeng berpuluh-puluh tahun? "
                          "Karena mereka jatuh cinta setiap hari pada orang yang sama. Itulah yang terjadi. "
                          "Maka, kesedihan apa pun, ujian seberat apapun bisa dilewati dengan baik.", style: TextStyle(fontSize: 16)),
                      SizedBox(height: 30),
                      Text("- Tere Liye -"),
                    ],
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}
