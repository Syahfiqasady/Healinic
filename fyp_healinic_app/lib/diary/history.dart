import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/homenav.dart';
import 'package:table_calendar/table_calendar.dart';

class HistoryFeeling extends StatefulWidget {
  const HistoryFeeling({Key? key}) : super(key: key);

  @override
  _HistoryFeelingState createState() => _HistoryFeelingState();
}

class _HistoryFeelingState extends State<HistoryFeeling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HealinicTheme.history,
      body: SingleChildScrollView(
        child: Column(
          children: [
            getAppBar(),
            TableCalendar(
              focusedDay: DateTime.now(),
              firstDay: DateTime.utc(2021, 01, 01),
              lastDay: DateTime(2025, 12, 12),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.bottomCenter,
              child: MaterialButton(
                minWidth: 200,
                height: 80,
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
                  "Back to HomePage",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),



          ],
        ),

      ),

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
              width: AppBar().preferredSize.height + 10,
              height: AppBar().preferredSize.height,
            ),
            Expanded(
              child: Center(
                child: Text(
                  'YOUR CALENDAR',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              width: AppBar().preferredSize.height + 10,
              height: AppBar().preferredSize.height,
            )
          ],
        ),
      ),
    );
  }
}
