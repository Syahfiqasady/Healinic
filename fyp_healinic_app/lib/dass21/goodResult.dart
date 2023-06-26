import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/dass21/ui_dass/scorerange.dart';
import 'package:fyp_healinic_app/dass21/ui_dass/yourscore.dart';
import 'package:fyp_healinic_app/homenav.dart';

class GResultPage extends StatefulWidget {
  const GResultPage({Key? key}) : super(key: key);

  @override
  _GResultPageState createState() => _GResultPageState();
}

class _GResultPageState extends State<GResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HealinicTheme.goodScoreBg,
      body: SingleChildScrollView(
          child: Stack(
        children: <Widget>[
          getAppBar(),
          ScoreRange(),
          UserScore(),
          getWord(),
          getNextButton(),
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
            Container(
              alignment: Alignment.centerLeft,
              width: AppBar().preferredSize.height + 40,
              height: AppBar().preferredSize.height,
            ),
            Expanded(
              child: Center(
                child: Text(
                  ' RESULT DASS-21',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Container(
              width: AppBar().preferredSize.height + 40,
              height: AppBar().preferredSize.height,
            )
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
        top: 500,
      ),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
          ),
          Text(
            "Your mental health is in good condition. Keep it up! ",
            style: TextStyle(
              fontSize: 15,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "Lets explore what you can do to maintain it.",
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

//////////NEXT BUTTON//////////
  Widget getNextButton() {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.only(top: 550, left: 105, right: 105),
      child: MaterialButton(
        minWidth: 200,
        height: 40,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HealinicHomeScreen()));
        },
        color: HealinicTheme.registrationButton,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.white,
          ),
        ),
        child: Text(
          "Next",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
