import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/challenge/depression/depression1.dart';
import 'package:fyp_healinic_app/home_page/ui_home/challenge_list_view.dart';

import 'depression/depression2.dart';
import 'depression/depression3.dart';
import 'depression/depression4.dart';

class DepressChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Depression Challenge",
            style: new TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold)),
        elevation: 0,
        backgroundColor: HealinicTheme.mainTheme,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            MaterialPageRoute(builder: (context) => ChallengeListView());
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 0, bottom: 0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 55,
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  color: HealinicTheme.nearlyWhite,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topRight: Radius.circular(8.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: HealinicTheme.grey.withOpacity(0.4),
                        offset: Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      child: SizedBox(
                        height: 80,
                        child: AspectRatio(
                          aspectRatio: 1.714,
                          child: Image.asset("assets/Image/back.png"),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Text(
                                "Self discovery",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: HealinicTheme.fontName,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  letterSpacing: 0.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 40,
                            bottom: 15,
                            top: 8,
                          ),
                          child: Text(
                            "",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              letterSpacing: 0.0,
                              color: HealinicTheme.grey.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Depress1()));
              },
            ),
            SizedBox(height: 15),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  color: HealinicTheme.nearlyWhite,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topRight: Radius.circular(8.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: HealinicTheme.grey.withOpacity(0.4),
                        offset: Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      child: SizedBox(
                        height: 80,
                        child: AspectRatio(
                          aspectRatio: 1.714,
                          child: Image.asset("assets/Image/back.png"),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Text(
                                "Personal development",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: HealinicTheme.fontName,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  letterSpacing: 0.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 40,
                            bottom: 15,
                            top: 8,
                          ),
                          child: Text(
                            "",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              letterSpacing: 0.0,
                              color: HealinicTheme.grey.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Depress2()));
              },
            ),
            SizedBox(height: 15),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  color: HealinicTheme.nearlyWhite,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topRight: Radius.circular(8.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: HealinicTheme.grey.withOpacity(0.4),
                        offset: Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      child: SizedBox(
                        height: 80,
                        child: AspectRatio(
                          aspectRatio: 1.714,
                          child: Image.asset("assets/Image/back.png"),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Text(
                                "Home self-care",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: HealinicTheme.fontName,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  letterSpacing: 0.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 40,
                            bottom: 15,
                            top: 8,
                          ),
                          child: Text(
                            "",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              letterSpacing: 0.0,
                              color: HealinicTheme.grey.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Depress3()));
              },
            ),
            SizedBox(height: 15),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  color: HealinicTheme.nearlyWhite,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topRight: Radius.circular(8.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: HealinicTheme.grey.withOpacity(0.4),
                        offset: Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      child: SizedBox(
                        height: 80,
                        child: AspectRatio(
                          aspectRatio: 1.714,
                          child: Image.asset("assets/Image/back.png"),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Text(
                                "Self-love",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: HealinicTheme.fontName,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  letterSpacing: 0.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 40,
                            bottom: 15,
                            top: 8,
                          ),
                          child: Text(
                            "",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              letterSpacing: 0.0,
                              color: HealinicTheme.grey.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Depress4()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
