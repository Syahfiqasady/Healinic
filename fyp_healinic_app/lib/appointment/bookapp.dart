import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/appointment/bookform.dart';

class BookApp extends StatefulWidget {
  const BookApp({Key? key}) : super(key: key);

  @override
  _BookAppState createState() => _BookAppState();
}

class _BookAppState extends State<BookApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HealinicTheme.badScoreBg,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            getAppBar(),
            BookForm(),
            SizedBox(
              height: 10,
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
            Expanded(
              child: Center(
                child: Text(
                  'BOOK APPOINTMENT',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
