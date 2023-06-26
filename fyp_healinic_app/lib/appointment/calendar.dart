import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';

class CalendarPicker extends StatefulWidget {
  const CalendarPicker({Key? key}) : super(key: key);

  @override
  _CalendarPickerState createState() => _CalendarPickerState();
}

class _CalendarPickerState extends State<CalendarPicker> {

  DateTime selectedDate = DateTime.now();

  final firstDate = DateTime(2020,1);
  final lastDate = DateTime(2025,12);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 10),
          Text('$selectedDate'.split(' ')[0],
          style: TextStyle(
            fontSize: 20,
          ),),
          Divider(),
          SizedBox(height: 10),
          ElevatedButton(onPressed: ()=> _openDatePicker(context), child: Text('Select Date',style: TextStyle(

            fontSize: 16,
            fontWeight: FontWeight.w700,
          )),
          )
        ],
      ),
    );
  }
  _openDatePicker(BuildContext context) async{
    final DateTime? date = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: firstDate,
        lastDate: lastDate,
    );

   if (date!= null){
     setState(() {
       selectedDate = date;
     });
   }


  }
}
