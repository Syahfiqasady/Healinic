import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/appointment/bookapp.dart';
import 'package:fyp_healinic_app/dass21/ui_dass/scorerange.dart';
import 'package:fyp_healinic_app/dass21/ui_dass/yourscore.dart';
import 'package:fyp_healinic_app/homenav.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BResultPage extends StatefulWidget {
  const BResultPage({Key? key}) : super(key: key);

  @override
  _BResultPageState createState() => _BResultPageState();
}

class _BResultPageState extends State<BResultPage> {
  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Hey there!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: HealinicTheme.darkerText,
              ),
            ),
            backgroundColor: HealinicTheme.mainTheme,
            content: Container(
                height: 100,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            text:
                                ("Just because no one else can heal or do your inner work for you,"
                                    "doesnt mean you can, should or do it alone!"),
                            style: TextStyle(
                                letterSpacing: 0.5,
                                height: 1.5,
                                fontFamily: HealinicTheme.fontName,
                                color: Colors.black,
                                fontSize: 13.0)),
                      ),
                    ),
                  ],
                )),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    color: HealinicTheme.darkerText,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HealinicHomeScreen()));
                },
              )
            ],
          );
        });
  }

  Future getScore() async {
    var url = "https://healininc.000webhostapp.com/dasscount.php";
    var response = await http.post(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      return jsonData;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HealinicTheme.badScoreBg,
      body: SingleChildScrollView(
          child: Stack(
        children: <Widget>[
          getAppBar(),
          ScoreRange(),
          Padding(
            padding: const EdgeInsets.fromLTRB(45.0, 320.0, 45.0, 10.0),
            child: Container(
              height: 190,
              color: Colors.white,
              child: Center(
                child: FutureBuilder(
                  future: getScore(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasError) print(snapshot.error);
                    return snapshot.hasData
                        ? ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index) {
                              List list = snapshot.data;
                              return ListTile(
                                title: Text(
                                  "Your DASS Result" + " \n",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: HealinicTheme.fontName,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                                subtitle: Text(
                                  "Anxiety             :    " +
                                      list[index]['scoreA'] +
                                      "\n\n" +
                                      "Stress                :    " +
                                      list[index]['scoreS'] +
                                      "\n\n" +
                                      "Depression       :    " +
                                      list[index]['scoreD'],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              );
                            })
                        : CircularProgressIndicator();
                  },
                ),
              ),
            ),
          ),
          getWord(),
          getBook1Button(),
          Container(
              padding: EdgeInsets.only(top: 660),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HealinicHomeScreen()));
                  },
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                        splashColor: Colors.white.withOpacity(0.1),
                        highlightColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        onTap: () {
                          createAlertDialog(context);
                        },
                        child: Text(
                          " Skip",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: HealinicTheme.nearlyWhite,
                          ),
                        )),
                  ),
                ),
              ))
        ],
      )),
    );
  }

  /////////////APPBAR///////////////////
  Widget getAppBar() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0)),
        color: HealinicTheme.nearlyWhite,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(0, 2),
              blurRadius: 8.0),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top, left: 8, right: 8),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                  ' RESULT DASS-21',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /////GET WORD//////////
  Widget getWord() {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.only(
        top: 530,
      ),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
          ),
          Text(
            "Please refer the Score Range table for your DASS Result",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget getBook1Button() {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.only(top: 600, left: 110, right: 100),
      child: MaterialButton(
        minWidth: double.infinity,
        height: 50,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BookApp()));
        },
        color: HealinicTheme.goodScoreBg,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.white,
          ),
        ),
        child: Text(
          "Book Appointment",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 17,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
