import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';

class UserScore extends StatefulWidget {
  const UserScore({Key? key}) : super(key: key);

  @override
  _UserScoreState createState() => _UserScoreState();
}

class _UserScoreState extends State<UserScore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(top: 310, right: 12, left: 12),
        child: Column(
          children: <Widget>[
            Text(
              "Your Score :",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: HealinicTheme.nearlyWhite,
                fontFamily: HealinicTheme.fontName,
                fontSize: 29,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              child: Table(
                border: TableBorder.all(color: Colors.grey),
                children: [
                  TableRow(children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(''),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Score',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Level',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Stress',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        '35',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Extremely Severe ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Anxiety',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        '16 ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Severe ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Depression',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        '21 ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Severe ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
