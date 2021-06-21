import 'dart:async';

import 'package:animation/models/greeting.dart';
import 'package:flutter/material.dart';

class WishPage extends StatefulWidget {
  @override
  _WishPageState createState() => _WishPageState();
}

class _WishPageState extends State<WishPage> {
  double opacity = 0;
  List<Greeting> _greetings = [];
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerNotes = TextEditingController();

  @override
  void initState() {
    super.initState();
    opacity = 0;
    Timer(Duration(milliseconds: 1500), () {
      setState(() {
        opacity = 1;
      });
    });
  }

  void showInSnackBar(String value) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(value)));
  }

  _addNotes(){
    if(_controllerName.text.isNotEmpty && _controllerNotes.text.isNotEmpty){
      setState(() {
        _greetings.add(Greeting(_controllerName.text, _controllerNotes.text));
        _controllerName.clear();
        _controllerNotes.clear();
      });
    }
    else{
      showInSnackBar("Harap isi nama dan ucapan");
    }
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
                  image: DecorationImage(image: AssetImage("src/img/background3.jpg"), fit: BoxFit.cover,),
                ),
              ),
              Center(
                child: ListView(
                  children: [
                    AnimatedOpacity(
                      opacity: opacity,
                      duration: Duration(seconds: 1),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            SizedBox(height: 50),
                            Text("Ucapan & Doa", style: TextStyle(fontSize: 30)),
                            SizedBox(height: 30),
                            TextFormField(
                              keyboardType: TextInputType.text,
                              controller: _controllerName,
                              decoration: InputDecoration(
                                labelText: 'Nama Pengirim',
                                labelStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                                keyboardType: TextInputType.text,
                                maxLines: 3,
                                controller: _controllerNotes,
                                decoration: InputDecoration(
                                  labelText: 'Ucapan',
                                  labelStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                ),
                              ),
                            SizedBox(height: 30),
                            TextButton(
                                onPressed: () => _addNotes(),
                                child: Text(
                                    "Kirim Ucapan".toUpperCase(),
                                    style: TextStyle(fontSize: 20)
                                ),
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),
                                            side: BorderSide(color: Colors.black)
                                        )
                                    )
                                ),
                            ),
                            SizedBox(height: 50),
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxHeight: 300,
                                  minHeight: 100
                              ),
                              child: Scrollbar(
                                child: ListView.builder(
                                  physics: ScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: _greetings.length,
                                  itemBuilder: (context, index) {
                                    return Card(
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(_greetings[index].name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                            SizedBox(height: 10),
                                            Text(_greetings[index].notes, style: TextStyle(fontSize: 16))
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            SizedBox(height: 50),
                          ],
                        ),
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
