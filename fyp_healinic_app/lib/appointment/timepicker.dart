import 'package:flutter/material.dart';

class TimeList extends StatefulWidget {
  const TimeList({Key? key}) : super(key: key);

  @override
  _TimeListState createState() => _TimeListState();
}

class _TimeListState extends State<TimeList> {
  final items = [
    '10.30am - 11.00am',
    '11.00am - 11.30am',
    '11.30am - 12pm',

  ];
  String? value;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.only(top: 5, right: 10, left: 10,

      ),
      child: DropdownButton<String>(
        value: value,
        isExpanded:true,
        items: items.map(buildMenuItem).toList(),
        onChanged: (value) => setState(() => this.value = value),
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
