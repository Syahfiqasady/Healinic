import 'dart:convert';
import 'package:fyp_healinic_app/home_page/home.dart';
import 'package:fyp_healinic_app/main.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/appointment/booking_detail.dart';

import '../homenav.dart';

class BookConfirmation extends StatefulWidget {
  const BookConfirmation({Key? key}) : super(key: key);

  @override
  _BookConfirmationState createState() => _BookConfirmationState();
}

class _BookConfirmationState extends State<BookConfirmation> {
  Future getAppointmentdetail() async {
    var url = "https://healininc.000webhostapp.com/viewappointment.php";
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
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5, top: 100),
              child: Container(
                height:550,
                color: Colors.white,
                child: FutureBuilder(
                  future: getAppointmentdetail(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasError) print(snapshot.error);
                    return snapshot.hasData
                        ? ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index) {
                              List list = snapshot.data;
                              return ListTile(
                                title: Text(
                                  "YOUR BOOKING ID : \n " +
                                      list[index]['appid'] +
                                      " \n",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: HealinicTheme.fontName,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30.0, right: 30, top: 10),
                                  child: Container(
                                    child: Text(

                                          list[index]['fullName'] +
                                          "\n\n" +
                                          "Gender               :         " +
                                          list[index]['gender'] +
                                          "\n\n" +
                                          "Age                     :          " +
                                          list[index]['age'] +
                                          "\n\n" +
                                          "Ic Number          :         " +
                                          list[index]['userIc'] +
                                          "\n\n" +
                                          "Phone No            :          " +
                                          list[index]['phoneNo'] +
                                          "\n\n" +
                                          "Date                    :         " +
                                          list[index]['scheduleDate'] +
                                          "\n\n" +
                                          "Day                     :         " +
                                          list[index]['scheduleDay'] +
                                          "\n\n" +
                                          "Time                    :         " +
                                          list[index]['startTime'] +
                                          "\n\n" +
                                          "Hospital Id          :          " +
                                          list[index]['doctorId'],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: HealinicTheme.darkText,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            })
                        : CircularProgressIndicator();
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 600, left: 10, right: 10),
              child: Text(
                  "Please refer to the Map Page for the hospital's ID & location",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    fontStyle: FontStyle.italic,
                    color: HealinicTheme.grey.withOpacity(0.5),
                    fontWeight: FontWeight.w700,
                  )),
            ),
            SizedBox(height: 10.0),
            getDoneButton()
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
                  'BOOKING CONFIRMATION',
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

  Widget getDoneButton() {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.only(top: 700, left: 110, right: 100),
      child: MaterialButton(
        minWidth: double.infinity,
        height: 40,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HealinicHomeScreen()));
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
          "Done",
          textAlign: TextAlign.center,
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
