import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/challenge/depress_challenge.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Depress4 extends StatefulWidget {
  @override
  State<Depress4> createState() => _Depress4State();
}

class _Depress4State extends State<Depress4> {
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
        title: Text("Self discovery",
            style: new TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold)),
        elevation: 0,
        backgroundColor: HealinicTheme.mainTheme,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            MaterialPageRoute(builder: (context) => DepressChallenge());
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
                  subtitle: Text(
                      'Get creative. Draw a cartoon, write a poem or start some DIY'),
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
                  subtitle:
                      Text('Have a laugh watching a comedy show or stand-up'),
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
                  subtitle: Text(
                      'Reach out to a friend or family member that you rarely speak to'),
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
                  subtitle: Text(
                      'Eat a meal packed with omega-3, like fish, nuts, or berries'),
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
                  subtitle: Text('Treat yourself by taking yourself on a date'),
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
                  subtitle: Text('Make a new rule; no phones at dinner'),
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
                  subtitle: Text('Do a deep breathing exercises'),
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
    title: const Text(
        'Get creative. Draw a cartoon, write a poem or start some DIY'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "Taking some time out of your day to color has been scientifically proven to calm nerves"),
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
    title: const Text('Have a laugh watching a comedy show or stand-up'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "Breathe in and out slowly, holding your breath for a few seconds after each inhale. Try doing this for 5-10 minutes when anxiety kicks in."),
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
    title: const Text(
        'Reach out to a friend or family member that you rarely speak to'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "Whether it be your favorite playlist or an upbeat band you love, put your headphones in and turn up the volume when your worries creep up on you."),
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
    title: const Text(
        'Eat a meal packed with omega-3, like fish, nuts, or berries'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "Take 15 minutes out of your morning to sit in a quiet place and focus on meditation."),
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
    title: const Text('Treat yourself by taking yourself on a date'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "One of the most effective ways to combat anxiety is distraction, so call a good friend or family member and catch up when you’re feeling nervous."),
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
    title: const Text('Make a new rule; no phones at dinner'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "It’s proven that exercise, especially running or jogging, can put you at ease."),
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
    title: const Text('Do a deep breathing exercises'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "Choosing a phrase and reminding yourself of it when you get nervous can help to keep you calm. Here are some great affirming phrases to use."),
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
