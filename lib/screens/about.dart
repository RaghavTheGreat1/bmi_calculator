import 'package:bmi_calculator/themes/constant_colors.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';

class AboutDeveloper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: kScaffoldDarkThemeBackgroundColor,
      ),
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/avatar.png'),
                radius: 75,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'RAGHAV JOSHI',
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  letterSpacing: 2.5,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () async {
                    const url = 'https://github.com/RaghavTheGreat1/';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.all(15),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: ExactAssetImage("images/Octocat.png"),
                      ),
                      color: Colors.black,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    const url = 'https://t.me/RaghavTheGreat1';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.all(15),
                    height: 150,
                    width: 150,
                    child: Image(
                      image: AssetImage("images/telegram.png"),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
