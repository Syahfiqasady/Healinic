import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/appointment/book_confirmation.dart';
import 'package:fyp_healinic_app/appointment/location.dart';
import 'package:fyp_healinic_app/homenav.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class BookForm extends StatefulWidget {
  const BookForm({Key? key}) : super(key: key);

  @override
  _BookFormState createState() => _BookFormState();
}

class _BookFormState extends State<BookForm> {
  final formKey = GlobalKey<FormState>(); //key for form
  // string for displaying the error Message
  String? errorMessage;

  // For CircularProgressIndicator.
  bool visible = false ;
  // editing Controller
  final fullNameController = TextEditingController();
  final IcNumController =  TextEditingController();
  final ageController =  TextEditingController();
  final genderController = TextEditingController();
  final phoneNoController = TextEditingController();
  final scheduleIdController = TextEditingController();

  Future booking() async{

    // Showing CircularProgressIndicator using State.
    setState(() {
      visible = true ;
    });

    // Getting value from Controller
    String fullName = fullNameController.text;
    String userIc = IcNumController.text;
    String age = ageController.text;
    String gender = genderController.text;
    String phoneNo = phoneNoController.text;
    String scheduleId = scheduleIdController.text;

    // Store all data with Param Name.
    var data = {'fullName': fullName, 'userIc': userIc, 'phoneNo' : phoneNo, 'age':age, 'gender':gender, 'scheduleId': scheduleId};


    var url = "https://healininc.000webhostapp.com/appointment.php";
    var response = await http.post(Uri.parse(url), body: json.encode(data));

    // Getting Server response into variable.
    var message = jsonDecode(response.body);


    // If Web call Success than Hide the CircularProgressIndicator.
    if(response.statusCode == 200){
      setState(() {
        visible = false;
      });
    }

    // Showing Alert Dialog with Response JSON.
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(message),
          actions: <Widget>[
            FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );



  }



  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 100, bottom: 10, left: 10, right: 10),
        child: Container(
          width: 400,
          color: HealinicTheme.nearlyWhite,
          padding: EdgeInsets.all(10),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: fullNameController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "Full name",
                      labelStyle: TextStyle(
                        fontFamily: HealinicTheme.fontName,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your name";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    fullNameController.text = value!;
                  },
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: IcNumController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Ic number",
                      labelStyle: TextStyle(
                        fontFamily: HealinicTheme.fontName,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your Ic number";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    IcNumController.text = value!;
                  },
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: ageController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Age",
                      labelStyle: TextStyle(
                        fontFamily: HealinicTheme.fontName,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your age";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    ageController.text = value!;
                  },
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: genderController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "Gender",
                      labelStyle: TextStyle(
                        fontFamily: HealinicTheme.fontName,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your name";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    genderController.text = value!;
                  },
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: phoneNoController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Phone Number",
                      labelStyle: TextStyle(
                        fontFamily: HealinicTheme.fontName,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your phone No";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    phoneNoController.text = value!;
                  },
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Hospital',
                    style: TextStyle(
                      fontFamily: HealinicTheme.fontName,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(
                  height: 5,
                ),
                LocationList(),

                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: scheduleIdController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Enter the Id of time slot you prefer",
                      labelStyle: TextStyle(
                        fontFamily: HealinicTheme.fontName,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter the Id of time slot you prefer";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    scheduleIdController.text = value!;
                  },
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 15,
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: MaterialButton(
                    minWidth: 200,
                    height: 40,
                    onPressed: () {
                      if (formKey.currentState!.validate()){
                        booking();
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BookConfirmation(),),);
                        debugPrint('Clicked RaisedButton Button');
                      } else {
                        print('Form is not validated');
                      }

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
                      "Book",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),

                  ),
                ),
                Visibility(
                    visible: visible,
                    child: Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: CircularProgressIndicator()
                    )
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: MaterialButton(
                    minWidth: 100,
                    height: 30,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HealinicHomeScreen()));
                    },
                    color: HealinicTheme.badScoreBg,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
