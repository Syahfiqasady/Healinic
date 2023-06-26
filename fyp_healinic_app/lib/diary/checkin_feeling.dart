import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/diary/Reflect.dart';
import 'package:fyp_healinic_app/diary/feeling_data.dart';

import '../app_theme.dart';


class CheckFeeling extends StatefulWidget {
  @override
  _CheckFeelingState createState() => _CheckFeelingState();
}

class _CheckFeelingState extends State<CheckFeeling> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HealinicTheme.mainTheme,
      body: SafeArea(
        child: Column(
            children: [
              getAppBar(),
              SizedBox(
                height: 20,
              ),
              Text('Let us go deeper!\nTap the feelings that describe you now',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700
              ),),
              SizedBox(
                height: 20,
              ),
              Expanded(

                child: Container(
                  width: 350,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HealinicTheme.nearlyWhite,

                  ),
                  padding: EdgeInsets.only(top: 10, right: 20, left: 20),
                  child: ListView.builder(


                      itemCount: feelingList.length,
                      itemBuilder: (BuildContext context, int index) {
                        // return item
                        return FeelingItem(
                          feelingList[index].title,
                          feelingList[index].isSelected,
                          index,
                        );
                      }),
                )

              ),
              selectedFeeling.length > 0 ? Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.green[700],
                    child: Text(
                      "Select (${selectedFeeling.length})",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => reflect()));
                    },
                  ),
                ),
              ): Container(),
            ],

        ),
      ),
    );
  }

  Widget FeelingItem(
      String title, bool isSelected, int index) {
    return ListTile(

      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w800,
        ),
      ),

      trailing: isSelected
          ? Icon(
        Icons.check_circle,
        color: Colors.green[700],
      )
          : Icon(
        Icons.check_circle_outline,
        color: Colors.grey,
      ),
      onTap: () {
        setState(() {
          feelingList[index].isSelected = !feelingList[index].isSelected;
          if (feelingList[index].isSelected == true) {
            selectedFeeling.add(Feeling( title, true));
          } else if (feelingList[index].isSelected == false) {
            selectedFeeling
                .removeWhere((element) => element.title == feelingList[index].title);
          }
        });
      },
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
                  'Check In Your Feeling',
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