import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/homenav.dart';

class BookingDetail extends StatefulWidget {
  const BookingDetail({Key? key}) : super(key: key);

  @override
  _BookingDetailState createState() => _BookingDetailState();
}

class _BookingDetailState extends State<BookingDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 100, bottom: 10, left: 10, right: 10),
        child: Container(
          width: 400,
          color: HealinicTheme.nearlyWhite,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "BOOKING ID : \n 3501",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              SizedBox(
                height: 20,
              ),
              buildTextField(
                "Full Name",
                "AZERA DINSIN",
              ),
              buildTextField(
                "IC Number",
                "000922-12-6336",
              ),
              buildTextField(
                "Age",
                "22",
              ),
              buildTextField(
                "Gender",
                "Female",
              ),
              buildTextField(
                "Hospital",
                "(Tawau) Hospital Tawau",
              ),
              buildTextField(
                "Date",
                "6 Jan 2022",
              ),
              buildTextField(
                "Time",
                "10.30am-11am",
              ),
              Text(
                'Note : Please show your booking ID when you go to the hospital/clinic. Any changes,please call and infrom the hospital/cllinic. Thank you.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: HealinicTheme.fontName,
                    fontSize: 12,
                    color: HealinicTheme.grey.withOpacity(0.5)),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: MaterialButton(
                  minWidth: 200,
                  height: 40,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HealinicHomeScreen()));
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
                    "Okay",
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
      ),
    );
  }

  Widget buildTextField(
    String labelText,
    String placeholder,
  ) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 5),
            labelText: labelText,
            labelStyle: TextStyle(
                fontFamily: HealinicTheme.fontName,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
      ),
    );
  }
}
