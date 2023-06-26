import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/appointment/book_confirmation.dart';
import 'package:fyp_healinic_app/diary/diary_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AppointmentBox extends StatelessWidget {
  final AnimationController? animationController; //for the animation
  final Animation<double>? animation;

  const AppointmentBox(
      {Key? key,
        this.animationController,
        this.animation}) //declare the animation
      : super(key: key);
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
    return AnimatedBuilder(
        animation: animationController!,
        builder: (BuildContext, Widget? child) {
          return FadeTransition(
            opacity: animation!,
            child: new Transform(
                transform: new Matrix4.translationValues(
                    0.0, 30 * (1.0 - animation!.value), 0.0),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 5, bottom: 18),
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                      color: HealinicTheme.nearlyWhite,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.0),
                          bottomLeft: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0),
                          topRight: Radius.circular(5.0)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: HealinicTheme.grey.withOpacity(1.0),
                            offset: Offset(1.5, 1.5),
                            blurRadius: 5.0),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                            child: Row(
                              children: <Widget>[
                                Text(" Upcoming Appointment",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: HealinicTheme.fontName,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19,
                                      color: HealinicTheme.titleWord,
                                    )),
                                InkWell(
                                  highlightColor: Colors.transparent,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(4.0)),
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Row(
                                      children: <Widget>[
                                        //////Press the calender to go Appointment////
                                        IconButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          BookConfirmation()));
                                            },
                                            icon: Icon(
                                              Icons.calendar_today_rounded,
                                              color: HealinicTheme.mainTheme,
                                              size: 20,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Expanded(
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
                                        list[index]['scheduleDate'] +
                                            " | " +
                                            list[index]['scheduleDay'] +
                                            " | " +
                                            list[index]['startTime'],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          color: HealinicTheme.darkText,
                                        ),
                                      ),
                                      subtitle: Text(
                                        "\n",
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
                        )
                      ],
                    ),
                  ),
                )),
          );
        });
  }
}