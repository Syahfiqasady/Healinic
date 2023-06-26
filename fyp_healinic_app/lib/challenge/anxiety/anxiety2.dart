import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/challenge/anxiety_challenge.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Anxiety2 extends StatefulWidget {
  @override
  State<Anxiety2> createState() => _Anxiety2State();
}

class _Anxiety2State extends State<Anxiety2> {
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
                  subtitle: Text('Let it all come out'),
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
                  subtitle: Text('Write in a journal'),
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
                  subtitle: Text('Do a crossword puzzle'),
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
                  subtitle: Text('Remove caffeine from your life'),
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
                  subtitle: Text('Dance like nobody is watching'),
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
                  subtitle: Text('Use a stress ball'),
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
                  subtitle: Text('Take a hot bath'),
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
    title: const Text('Let it all come out'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "For some people, surppressing anxiety can make it worst. When you’re nervous, try letting it all out. Punch a pillow or scream – seriously."),
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
    title: const Text('Write in a journal'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "Write down everything you’re feeling as the nerves come on. You don’t even have to keep your writing when you’re done – just put it down in words."),
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
    title: const Text('Do a crossword puzzle'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "Games that require lots of brainpower and concentration are shown to help people with anxiety."),
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
    title: const Text('Remove caffeine from your life'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "Because caffeine is a stimulant, it can trigger anxiety attacks. You may see a big difference if you cut it out."),
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
    title: const Text('Dance like nobody is watching '),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "Dancing it out, dance as much as you can when you start to feel worried. Dancing alleviates stress and nerves, so even if you’re alone in your family room, give it a try."),
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
    title: const Text('Use a stress ball '),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "Get your hands on a stress ball and repeatedly squeeze it. It is known to relieve tension."),
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
    title: const Text('Take a hot bath '),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
            "For more immediate relief, taking a hot bath will cause your body to relax, calming you down."),
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
