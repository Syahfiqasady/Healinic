import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/challenge/challenge_list_view.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:fyp_healinic_app/app_theme.dart';

class MorningRoutine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Morning Routine Challenge"),
        elevation: 0,
        backgroundColor: HealinicTheme.mainTheme,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            MaterialPageRoute(builder: (context) => ChallengeListView());
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "Day 1",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                      isFirst: true,
                    ),
                  ),
                  Text("Wake-up with visualization")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Drink water")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("5 minute Yoga Flow")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Meditate")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Morning Page")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Breathing exercise")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Do stretch")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Eat healthy breakfast")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Plan your day")
                ],
              ),
              Text(
                "Day 2",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Wake-up with visualization")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Drink water")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("5 minute Yoga Flow")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Meditate")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Morning Page")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Breathing exercise")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Do stretch")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Eat healthy breakfast")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Plan your day")
                ],
              ),
              Text(
                "Day 3",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Wake-up with visualization")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Drink water")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("5 minute Yoga Flow")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Meditate")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Morning Page")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Breathing exercise")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Do stretch")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Eat healthy breakfast")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Plan your day")
                ],
              ),
              Text(
                "Day 4",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Wake-up with visualization")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Drink water")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("5 minute Yoga Flow")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Meditate")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Morning Page")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Breathing exercise")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Do stretch")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Eat healthy breakfast")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Plan your day")
                ],
              ),
              Text(
                "Day 5",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Wake-up with visualization")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Drink water")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("5 minute Yoga Flow")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Meditate")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Morning Page")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Breathing exercise")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Do stretch")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Eat healthy breakfast")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Plan your day")
                ],
              ),
              Text(
                "Day 6",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Wake-up with visualization")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Drink water")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("5 minute Yoga Flow")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Meditate")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Morning Page")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Breathing exercise")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Do stretch")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Eat healthy breakfast")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Plan your day")
                ],
              ),
              Text(
                "Day 7",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Wake-up with visualization")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Drink water")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("5 minute Yoga Flow")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Meditate")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Morning Page")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Breathing exercise")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(""),
                    ),
                  ),
                  Text("Do stretch")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                    ),
                  ),
                  Text("Eat healthy breakfast")
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: TimelineTile(
                      endChild: Text(" "),
                      isLast: true,
                    ),
                  ),
                  Text("Plan your day")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
