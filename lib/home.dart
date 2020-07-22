import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 800,
        height: 400,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: Card(
              elevation: 3.0,
              color: Hexcolor('#2A272A'),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.asset('images/warning.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Container(
                          child: Text(
                            'Hello! This website is under construction for now!',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 22,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Container(
                          child: Text(
                            'Stay tuned!',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 22,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                        child: Container(
                          child: Text(
                            'Made with 💖 by Amey on Flutter Web',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                color: Hexcolor('#5B63B7')),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            onTap: () async {
              if (await canLaunch("https://github.com/ameysunu")) {
                await launch("https://github.com/ameysunu");
              }
            },
          ),
        ),
      ),
    );
  }
}
