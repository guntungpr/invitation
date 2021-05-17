import 'package:animation/dashboard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          fontFamily: "Courgette"
      ),
      child: Center(
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("src/img/prewed_2.jpg"), fit: BoxFit.cover,),
                ),
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Annisa & Budi',
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                    SizedBox(height: 50),
                    Text(
                      'Silahkan klik tombol dibawah untuk membuka undangan',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                        child: Text(
                            "Buka Undangan".toUpperCase(),
                            style: TextStyle(fontSize: 20)
                        ),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.white)
                                )
                            )
                        ),
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DashboardPage()))
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
