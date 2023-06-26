import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/Model_db/usermodel.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/dass21/dassquest.dart';
import 'package:fyp_healinic_app/main.dart';
import 'package:fyp_healinic_app/profile_page/editprofile.dart';
import 'package:http/http.dart' as http;

class ProfilePageUi extends StatefulWidget {
  const ProfilePageUi({Key? key, this.animationController}) : super(key: key);
  final AnimationController? animationController;

  @override
  _ProfilePageUiState createState() => _ProfilePageUiState();
}

class _ProfilePageUiState extends State<ProfilePageUi>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  final ScrollController _scrollController = ScrollController();

  Future logout() async{

    var url = "https://healininc.000webhostapp.com/logout.php";

    var response = await http.post(Uri.parse(url));
    var message = jsonDecode(response.body);

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage())
    );

    // Showing Alert Dialog with Response JSON Message.
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

  Future getProfile()async{
    var url = "https://healininc.000webhostapp.com/viewprofile.php";
    var response = await http.post(Uri.parse(url));
    if (response.statusCode==200){
      var jsonData = json.decode(response.body);
      return jsonData;
    }
  }

  Future getScore()async{
    var url = "https://healininc.000webhostapp.com/dasscount.php";
    var response = await http.post(Uri.parse(url));
    if (response.statusCode==200){
      var jsonData = json.decode(response.body);
      return jsonData;
    }
  }


  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HealinicTheme.mainTheme,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 35.0),
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/Image/profile.jpg'),
                    radius: 50.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Center(
                  child: Text("",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 2.0,
                      )),
                ),
                Divider(
                  height: 70.0,
                  color: Colors.black,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    color: Colors.white,
                    child: FutureBuilder(
                      future: getProfile(),
                      builder: (context,AsyncSnapshot snapshot){
                        if(snapshot.hasError) print(snapshot.error);
                        return snapshot.hasData
                            ? ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (context,index){
                              List list = snapshot.data;
                              return ListTile(
                              title: Text("Username : " + list[index]['fullName']
                                  + " \n",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: HealinicTheme.darkText,
                                ),),
                              subtitle: Text("Age            : " + list[index]['age']
                                + "\n\n" + "Gender       : " + list[index]['gender']
                                + "\n\n" + "Email          : " + list[index]['email'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: HealinicTheme.darkText,
                                ),
                              ),

                              );
                            }
                        )
                            : CircularProgressIndicator();
                      },
                    ),
                  ),
                ),


                SizedBox(height: 5.0),
                Text(
                  'My DASS-21 Result',
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    color: Colors.white,
                    child: FutureBuilder(
                      future: getScore(),
                      builder: (context,AsyncSnapshot snapshot){
                        if(snapshot.hasError) print(snapshot.error);
                        return snapshot.hasData
                            ? ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (context,index){
                              List list = snapshot.data;
                              return ListTile(
                                title: Text("Anxiety              : " + list[index]['scoreA']
                                    + " \n",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),),
                                subtitle: Text("Stress                 : " + list[index]['scoreS']
                                    + "\n\n" + "Depression        : " + list[index]['scoreD'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),

                              );
                            }
                        )
                            : CircularProgressIndicator();
                      },
                    ),
                  ),
                ),

                SizedBox(height: 5.0),
                Container(
                  padding: EdgeInsets.only(left: 80, right: 80),
                  child: MaterialButton(
                    minWidth: 200,
                    height: 40,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DassQuesPage()));
                    },
                    color: Color(0xff0095FF),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    child: Text(
                      "Retake",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: ActionChip(
                    label: Text("Logout"),
                    onPressed: () {
                      logout();
                    },
                  ),
                ),
                SizedBox(height: 90),
              ],
            ),
          ),
        ));
  }
}
