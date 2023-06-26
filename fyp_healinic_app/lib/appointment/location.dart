import 'dart:convert';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class LocationList extends StatefulWidget {
  const LocationList({Key? key}) : super(key: key);

  @override
  _LocationListState createState() => _LocationListState();
}

class _LocationListState extends State<LocationList> {

  String? selectedValue;
  String? selectedValue2;
  List hospitalList = [];
  List scheduleList = [];

  Future getHospital()async{
    var url = "https://healininc.000webhostapp.com/hospitalselect.php";
    var response = await http.get(Uri.parse(url));
    if (response.statusCode==200){
      var jsonData = json.decode(response.body);
      setState(() {
        hospitalList = jsonData;
      });
    }


  }

  Future getHospitalSchedule()async{
    var url = "https://healininc.000webhostapp.com/hospitalschedule.php";
    var response = await http.post(Uri.parse(url),body:{"doctorId":selectedValue});
    if (response.statusCode==200){
      var jsonData = json.decode(response.body);
      return jsonData;
    }
  }

  @override
  void initState(){
    super.initState();
    getHospital();
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.only(top: 5, right: 10, left: 10,
      ),
      child:Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton(
              hint: Text("Select a Hospital/Clinic"),
              value: selectedValue,
              isExpanded:true,
              items: hospitalList.map((hospital){
                return DropdownMenuItem(
                    value: hospital['doctorId'],
                    child: Text(hospital['doctorName'],
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        )));
              }).toList(),
              onChanged: (value){
                setState(() {
                  selectedValue=value.toString();
                });
              },
            ),
          ),



          Container(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FutureBuilder(
                  future: getHospitalSchedule(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if(snapshot.hasData){
                      if(snapshot.data.length ==0){
                        return Text ("No Time Slot Available. \n"
                            "You may go directly to the hospital/clinic to book your appointment.",
                            textAlign: TextAlign.center
                            ,style: TextStyle(
                              fontFamily: HealinicTheme.fontName,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ));
                      }
                      return ListView.builder(
                          itemCount: (snapshot.data as List).length,
                          itemBuilder: (context, index){
                            var list = snapshot.data[index];
                            return Card(
                              child: ListTile(
                                  title: Column(
                                    children: [
                                      Divider(endIndent: 2),
                                      Text("ID : " + list['scheduleId'] + "\n\n" + list['scheduleDate'] + " | " + list['scheduleDay'] + " | " + list['startTime'] ,
                                          style: TextStyle(
                                            fontFamily: HealinicTheme.fontName,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )),
                                    ],
                                  )
                              ),);
                          });

                    }return Text( "Select a hospital/clinic to see time slot available.",
                        textAlign: TextAlign.center
                        ,style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ));
                  }),

            ),
          ),
        ],
      ),
    );

  }
  DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),);


}
