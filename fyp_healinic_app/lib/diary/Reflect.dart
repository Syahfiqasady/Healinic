import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/diary/history.dart';
import 'package:fyp_healinic_app/diary/reflect_container.dart';
import 'package:fyp_healinic_app/map_page/map_main.dart';

class reflect extends StatefulWidget {
  const reflect({Key? key}) : super(key: key);

  @override
  _reflectState createState() => _reflectState();
}

class _reflectState extends State<reflect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HealinicTheme.mainTheme,
      body:SingleChildScrollView(
        child: Column(
          children: [
            getAppBar(),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.only(left: 20,right: 20),
                child: Text('Now, we have some simple activities to help you reflect and understand your emotions.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      color: Colors.white
                  ),)),
            SizedBox(height: 20,),
            ReflectCont(inputText: "Courageous",
              subText: "Why do you feel courageous?",),
            SizedBox(height: 20,),
            ReflectCont(inputText: "Honoured",
              subText: "Why?",),
            SizedBox(height: 20,),
            ReflectCont(inputText: "Grateful",
              subText: "Why?",),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.bottomCenter,
              child: MaterialButton(
                minWidth: 200,
                height: 40,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HistoryFeeling()));
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
                  "Done",
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
                  'Reflect',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
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
