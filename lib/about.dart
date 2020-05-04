import 'package:flutter/material.dart';
import 'themes/constant_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kInactiveLabelAndIconColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
