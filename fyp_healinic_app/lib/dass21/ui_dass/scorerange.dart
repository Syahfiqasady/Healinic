import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';

class ScoreRange extends StatelessWidget {
  const ScoreRange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(top: 100, left: 12, right: 12),
        child: Column(
          children: <Widget>[
            Text(
              "Score Range :",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: HealinicTheme.fontName,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.transparent,
              child: Table(
                border: TableBorder.all(color: Colors.blueGrey),
                children: [
                  TableRow(
                      decoration: BoxDecoration(
                        color: HealinicTheme.nearlyWhite,
                      ),
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text(''),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Depression',
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
                            'Anxiety',
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
                            'Stress',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: HealinicTheme.normal,
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            'Normal',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            '0 - 9',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            '0 - 7',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            '0 - 14',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: HealinicTheme.mild,
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            'Mild',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            '10 - 13',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            '8 - 9',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            '15 - 18',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: HealinicTheme.moderate,
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            'Moderate',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            '14 - 20',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            '10 - 14',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            '19 - 25',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: HealinicTheme.severe,
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            'Severe',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            '21 - 27',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            '15 - 19',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            '26 - 33',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ]),
                  TableRow(
                      decoration: BoxDecoration(
                        color: HealinicTheme.extremelysevere,
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            'Extremely Severe',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '28+',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '20+',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '34+',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
