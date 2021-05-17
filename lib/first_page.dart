import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool animated = false;
  double opacity = 0;

  @override
  void initState() {
    super.initState();
    animated = false;
    opacity = 0;
    Timer(Duration(milliseconds: 1500), () {
      setState(() {
        animated = true;
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
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("src/img/background1.jpg"), fit: BoxFit.cover,),
              ),
            ),
            Center(
              child: ListView(
                children: [
                  AnimatedOpacity(
                    opacity: opacity,
                    duration: Duration(seconds: 1),
                    child: Column(
                      children: [
                        SizedBox(height: 50),
                        SizedBox(
                          width: 150,
                          height: 150,
                          child: CircleAvatar(child: Icon(Icons.person_rounded, color: Colors.black, size: 80), backgroundColor: Colors.grey)
                        ),
                        SizedBox(height: 30),
                        Text("Annisa Apriliani, S.Kes", style: TextStyle(fontSize: 30)),
                        Text("Anak perempuan dari ", style: TextStyle(fontSize: 16)),
                        Text("Setiawan Budi & Ira Permatasari ", style: TextStyle(fontSize: 16)),
                        SizedBox(height: 50),
                        Text("&", style: TextStyle(fontSize: 50)),
                        // AnimatedDefaultTextStyle(
                        //   child: Text("&"),
                        //   style : animated ? TextStyle(
                        //     color: Colors.red,
                        //     fontSize: 50,
                        //     fontWeight: FontWeight.w800,
                        //     letterSpacing: 4,
                        //   ) : TextStyle(
                        //     color: Colors.white,
                        //     fontWeight: FontWeight.w100,
                        //     fontSize: 14,
                        //     letterSpacing: 1,
                        //   ),
                        //   duration: Duration(milliseconds: 1000),
                        //   curve: Curves.linear,
                        // ),
                        SizedBox(height: 50),
                        SizedBox(
                            width: 150,
                            height: 150,
                            child: CircleAvatar(child: Icon(Icons.person_rounded, color: Colors.black, size: 80), backgroundColor: Colors.grey)
                        ),
                        SizedBox(height: 30),
                        Text("Budi Setiawan, S.Ss", style: TextStyle(fontSize: 30)),
                        Text("Anak laki-laki dari ", style: TextStyle(fontSize: 16)),
                        Text("Setiawan Budi & Ira Permatasari ", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
