import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/diary/models/activity.dart';
import 'package:fyp_healinic_app/diary/models/mood.dart';
import 'package:fyp_healinic_app/diary/models/moodcard.dart';
import 'package:fyp_healinic_app/diary/widgets/acitivity.dart';
import 'package:fyp_healinic_app/diary/widgets/moodicon.dart';
import 'package:provider/provider.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  late MoodCard moodCard;
  late String mood;
  late String image;
  late String datepicked;
  late String timepicked;
  String datetime = "";
  late int currentindex;
  int ontapcount = 0;
  List<Mood> moods = [
    Mood('assets/Image/smile.png', 'Happy', false),
    Mood('assets/Image/sad.png', 'Sad', false),
    Mood('assets/Image/angry.png', 'Angry', false),
    Mood('assets/Image/surprised.png', 'Surprised', false),
    Mood('assets/Image/loving.png', 'Loving', false),
    Mood('assets/Image/scared.png', 'Scared', false)
  ];

  List<Activity> act = [
    Activity('assets/Image/sports.png', 'Sports', false),
    Activity('assets/Image/sleeping.png', 'Sleep', false),
    Activity('assets/Image/shop.png', 'Shop', false),
    Activity('assets/Image/relax.png', 'Relax', false),
    Activity('assets/Image/reading.png', 'Read', false),
    Activity('assets/Image/movies.png', 'Movies', false),
    Activity('assets/Image/gaming.png', 'Gaming', false),
    Activity('assets/Image/friends.png', 'Friends', false),
    Activity('assets/Image/family.png', 'Family', false),
    Activity('assets/Image/excercise.png', 'Excercise', false),
    Activity('assets/Image/eat.png', 'Eat', false),
    Activity('assets/Image/date.png', 'Date', false),
    Activity('assets/Image/clean.png', 'Clean', false)
  ];
  Color colour = Colors.white;
  void initState() {
    super.initState();
  }

  late String dateonly;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HealinicTheme.mainTheme,
        appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('MOOD Dairy',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            backgroundColor: HealinicTheme.buttonBgb),
        body: Container(
          child: Column(children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <
                Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/home_screen');
                },
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      child: CircleAvatar(
                          child: Icon(Icons.dashboard,
                              color: Colors.green, size: 30),
                          radius: 25,
                          backgroundColor: Colors.white),
                      backgroundColor: Colors.green,
                    ),
                    SizedBox(height: 2.5),
                    Text('Dashboard',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.green,
                            fontSize: 15))
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2001),
                          lastDate: DateTime(2025))
                      .then((date) => {
                            setState(() {
                              datepicked = date!.day.toString() +
                                  '-' +
                                  date!.month.toString() +
                                  '-' +
                                  date!.year.toString();
                              dateonly = date.day.toString() +
                                  '/' +
                                  date!.month.toString();
                            }),
                          });
                },
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      child: CircleAvatar(
                          child: Icon(Icons.calendar_today,
                              color: Colors.blue, size: 30),
                          radius: 25,
                          backgroundColor: Colors.white),
                      backgroundColor: Colors.blue,
                    ),
                    SizedBox(
                      height: 2.5,
                    ),
                    Text('Pick a date',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.blue,
                            fontSize: 15))
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  showTimePicker(context: context, initialTime: TimeOfDay.now())
                      .then((time) => {
                            setState(() {
                              timepicked = time!.format(context).toString();
                            })
                          });
                },
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      child: CircleAvatar(
                          child: Icon(Icons.timer, color: Colors.red, size: 30),
                          radius: 25,
                          backgroundColor: Colors.white),
                      backgroundColor: Colors.red,
                    ),
                    SizedBox(
                      height: 2.5,
                    ),
                    Text('Pick a time',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.red,
                            fontSize: 15))
                  ],
                ),
              ),
            ]),
            SizedBox(height: 20),
            Container(
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      FloatingActionButton(
                        backgroundColor: HealinicTheme.buttonBgb,
                        child: Icon(Icons.done),
                        onPressed: () => setState(() {
                          datetime = datepicked + '   ' + timepicked;
                        }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          'Cick the button if done pick date and time',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: HealinicTheme.darkerText,
                          ),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: HealinicTheme.buttonBgb,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(40.0),
                    topRight: const Radius.circular(40.0),
                  )),
              child: Column(
                children: [
                  Text('WHAT YOU FEELING NOW?',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  SizedBox(height: 6),
                  Text('(Tap to Select and Tap again to deselect!)',
                      style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontSize: 14,
                          color: HealinicTheme.grey)),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: moods.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: <Widget>[
                        SizedBox(width: 15),
                        GestureDetector(
                            child: MoodIcon(
                                image: moods[index].moodimage,
                                name: moods[index].name,
                                colour: moods[index].iselected
                                    ? Colors.black
                                    : HealinicTheme.buttonBgb),
                            onTap: () => {
                                  if (ontapcount == 0)
                                    {
                                      setState(() {
                                        mood = moods[index].name;
                                        image = moods[index].moodimage;
                                        moods[index].iselected = true;
                                        ontapcount = ontapcount + 1;
                                        print(mood);
                                      }),
                                    }
                                  else if (moods[index].iselected)
                                    {
                                      setState(() {
                                        moods[index].iselected = false;
                                        ontapcount = 0;
                                      })
                                    }
                                }),
                      ],
                    );
                  }),
            ),
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: HealinicTheme.buttonBgb,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(40.0),
                    topRight: const Radius.circular(40.0),
                  )),
              child: Column(
                children: [
                  Text('WHAT YOU HAVE BEEN DOING?',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text('Hold on the activity to select,You can choose multiple',
                      style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontSize: 14,
                          color: HealinicTheme.grey)),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: act.length,
                  itemBuilder: (context, index) {
                    return Row(children: <Widget>[
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                          child: ActivityIcon(
                              act[index].image,
                              act[index].name,
                              act[index].selected
                                  ? Colors.black
                                  : HealinicTheme.buttonBgb),
                          onLongPress: () => {
                                if (act[index].selected)
                                  {
                                    setState(() {
                                      act[index].selected = false;
                                    })
                                  }
                                else
                                  setState(() {
                                    act[index].selected = true;
                                    Provider.of<MoodCard>(context,
                                            listen: false)
                                        .add(act[index]);
                                  }),
                              }),
                    ]);
                  }),
            ),
            GestureDetector(
              onTap: () => {
                setState(() {
                  Provider.of<MoodCard>(context, listen: false).addPlace(
                      datetime,
                      mood,
                      image,
                      Provider.of<MoodCard>(context, listen: false)
                          .activityimage
                          .join('_'),
                      Provider.of<MoodCard>(context, listen: false)
                          .activityname
                          .join('_'),
                      dateonly);
                }),
                Navigator.of(context).pushNamed('/home_screen'),
              },
              child: Container(
                height: 38.00,
                width: 117.00,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Save',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 21.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: HealinicTheme.registrationButton,
                  borderRadius: BorderRadius.circular(10.00),
                ),
              ),
            ),
            SizedBox(height: 15)
          ]),
        ));
  }
}
