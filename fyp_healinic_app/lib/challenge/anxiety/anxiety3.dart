import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/challenge/anxiety_challenge.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Anxiety3 extends StatefulWidget {
  @override
  State<Anxiety3> createState() => _Anxiety3State();
}

class _Anxiety3State extends State<Anxiety3> {
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;
  bool valueforth = false;
  bool valuefifth = false;
  bool valuesixth = false;
  bool valueseventh = false;
  int checked = 0;
  int unchecked = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Take control of your nerves",
            style: new TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold)),
        elevation: 0,
        backgroundColor: HealinicTheme.mainTheme,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            MaterialPageRoute(builder: (context) => AnxietyChallenge());
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
          padding: new EdgeInsets.all(22.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              new CircularPercentIndicator(
                radius: 120.0,
                lineWidth: 13.0,
                animation: true,
                percent: (checked / 7) * 1,

                /* footer: new Text(
                    "Sales this week",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17.0),
                  ), */
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.lightBlueAccent,
              ),
              SizedBox(height: 15),
              CheckboxListTile(
                  title: const Text('Day 1'),
                  subtitle: Text('Laugh'),
                  value: this.valuefirst,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      this.valuefirst = value!;
                      if (valuefirst == true) {
                        checked = checked + 1;
                      } else {
                        unchecked = unchecked + 1;
                      }
                    });
                  },
                  secondary: IconButton(
                    icon: Icon(Icons.info),
                    color: Colors.grey,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            _firstPopupDialog(context),
                      );
                    },
                  )),
              SizedBox(height: 6),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('Day 2'),
                  subtitle: Text('Work on an art project '),
                  value: this.valuesecond,
                  onChanged: (bool? value) {
                    setState(() {
                      this.valuesecond = value!;
                      if (valuesecond == true) {
                        checked = checked + 1;
                      } else {
                        unchecked = unchecked + 1;
                      }
                    });
                  },
                  secondary: IconButton(
                    icon: Icon(Icons.info),
                    color: Colors.grey,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            _secondPopupDialog(context),
                      );
                    },
                  )),
              SizedBox(height: 6),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('Day 3'),
                  subtitle: Text('Try yoga'),
                  value: this.valuethird,
                  onChanged: (bool? value) {
                    setState(() {
                      this.valuethird = value!;
                      if (valuethird == true) {
                        checked = checked + 1;
                      } else {
                        unchecked = unchecked + 1;
                      }
                    });
                  },
                  secondary: IconButton(
                    icon: Icon(Icons.info),
                    color: Colors.grey,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            _thirdPopupDialog(context),
                      );
                    },
                  )),
              SizedBox(height: 6),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('Day 4'),
                  subtitle: Text('Go on a digital detox'),
                  value: this.valueforth,
                  onChanged: (bool? value) {
                    setState(() {
                      this.valueforth = value!;
                      if (valueforth == true) {
                        checked = checked + 1;
                      } else {
                        unchecked = unchecked + 1;
                      }
                    });
                  },
                  secondary: IconButton(
                    icon: Icon(Icons.info),
                    color: Colors.grey,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            _forthPopupDialog(context),
                      );
                    },
                  )),
              SizedBox(height: 6),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('Day 5'),
                  subtitle: Text('Step outside and take a walk'),
                  value: this.valuefifth,
                  onChanged: (bool? value) {
                    setState(() {
                      this.valuefifth = value!;
                      if (valuefifth == true) {
                        checked = checked + 1;
                      } else {
                        unchecked = unchecked + 1;
                      }
                    });
                  },
                  secondary: IconButton(
                    icon: Icon(Icons.info),
                    color: Colors.grey,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            _fifthPopupDialog(context),
                      );
                    },
                  )),
              SizedBox(height: 6),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('Day 6'),
                  subtitle: Text('Schedule your worrying '),
                  value: this.valuesixth,
                  onChanged: (bool? value) {
                    setState(() {
                      this.valuesixth = value!;
                      if (valuesixth == true) {
                        checked = checked + 1;
                      } else {
                        unchecked = unchecked + 1;
                      }
                    });
                  },
                  secondary: IconButton(
                    icon: Icon(Icons.info),
                    color: Colors.grey,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            _sixthPopupDialog(context),
                      );
                    },
                  )),
              SizedBox(height: 6),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text('Day 7'),
                  subtitle: Text('Accept your feelings '),
                  value: this.valueseventh,
                  onChanged: (bool? value) {
                    setState(() {
                      this.valueseventh = value!;
                      if (valueseventh == true) {
                        checked = checked + 1;
                      } else {
                        unchecked = unchecked + 1;
                      }
                    });
                  },
                  secondary: IconButton(
                    icon: Icon(Icons.info),
                    color: Colors.grey,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            _seventhPopupDialog(context),
                      );
                    },
                  )),
            ],
          )),
    );
  }
}

Widget _firstPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Laugh'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "Occupying your brain with humor not only improves your mood, it distracts your mind. Watch some funny videos when you have worries."),
      ],
    ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Close'),
      ),
    ],
  );
}

Widget _secondPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Work on an art project '),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "Studies show that doing arts and crafts projects can significantly lower anxiety levels."),
      ],
    ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Close'),
      ),
    ],
  );
}

Widget _thirdPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Try yoga '),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "Whether you take class or follow an online video, give stress-relieving yoga a try."),
      ],
    ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Close'),
      ),
    ],
  );
}

Widget _forthPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Go on a digital detox '),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "Alleviate your stress by leaving your work behind at the office when you go home. Don’t look at your smartphone for any emails or work updates."),
      ],
    ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Close'),
      ),
    ],
  );
}

Widget _fifthPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Step outside and take a walk '),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "A change of scenery somewhere secluded can calm your nerves. Whether you are at work or home, take a moment to get some fresh air and take in your surroundings."),
      ],
    ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Close'),
      ),
    ],
  );
}

Widget _sixthPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Schedule your worrying '),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "Many psychologists recommend scheduling an hour out of your day for your worry time. That way, your stress is not open-minded; you’re only allowed to worry in that time period."),
      ],
    ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Close'),
      ),
    ],
  );
}

Widget _seventhPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Accept your feelings '),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "It’s okay to have anxiety. Once you recognize your symptoms and nervousness, you can then learn how to control it."),
      ],
    ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Close'),
      ),
    ],
  );
}
