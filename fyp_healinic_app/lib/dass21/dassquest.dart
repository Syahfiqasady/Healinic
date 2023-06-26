import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/dass21/badResult.dart';

import 'package:http/http.dart' as http;

class DassQuesPage extends StatefulWidget {
  const DassQuesPage({Key? key, this.animationController}) : super(key: key);
  final AnimationController? animationController;

  @override
  _DassQuesPageState createState() => _DassQuesPageState();
}

class _DassQuesPageState extends State<DassQuesPage>
    with TickerProviderStateMixin {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AnimationController? animationController;
  final ScrollController scrollController = ScrollController();

  final TextEditingController value1 = new TextEditingController();
  TextEditingController value2 = TextEditingController();
  TextEditingController value3 = TextEditingController();
  TextEditingController value4 = TextEditingController();
  TextEditingController value5 = TextEditingController();
  TextEditingController value6 = TextEditingController();
  TextEditingController value7 = TextEditingController();
  TextEditingController value8 = TextEditingController();
  TextEditingController value9 = TextEditingController();
  TextEditingController value10 = TextEditingController();
  TextEditingController value11 = TextEditingController();
  TextEditingController value12 = TextEditingController();
  TextEditingController value13 = TextEditingController();
  TextEditingController value14 = TextEditingController();
  TextEditingController value15 = TextEditingController();
  TextEditingController value16 = TextEditingController();
  TextEditingController value17 = TextEditingController();
  TextEditingController value18 = TextEditingController();
  TextEditingController value19 = TextEditingController();
  TextEditingController value20 = TextEditingController();
  TextEditingController value21 = TextEditingController();

  Future submit() async {
    var url = "https://healininc.000webhostapp.com/dassinsert.php";
    await http.post(Uri.parse(url), body: {
      "q1": value1.text,
      "q2": value2.text,
      "q3": value3.text,
      "q4": value4.text,
      "q5": value5.text,
      "q6": value6.text,
      "q7": value7.text,
      "q8": value8.text,
      "q9": value9.text,
      "q10": value10.text,
      "q11": value11.text,
      "q12": value12.text,
      "q13": value13.text,
      "q14": value14.text,
      "q15": value15.text,
      "q16": value16.text,
      "q17": value17.text,
      "q18": value18.text,
      "q19": value19.text,
      "q20": value20.text,
      "q21": value21.text,


    });

  }



  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 50));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final value1Field = TextFormField(
      autofocus: false,
      controller: value1,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value1.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
    textAlign: TextAlign.center,);

    final value2Field = TextFormField(
      autofocus: false,
      controller: value2,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value2.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final value3Field = TextFormField(
      autofocus: false,
      controller: value3,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value3.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final value4Field = TextFormField(
      autofocus: false,
      controller: value4,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value4.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final value5Field = TextFormField(
      autofocus: false,
      controller: value5,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value5.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final value6Field = TextFormField(
      autofocus: false,
      controller: value6,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value6.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final value7Field = TextFormField(
      autofocus: false,
      controller: value7,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value7.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final value8Field = TextFormField(
      autofocus: false,
      controller: value8,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value8.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final value9Field = TextFormField(
      autofocus: false,
      controller: value9,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value9.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final value10Field = TextFormField(
      autofocus: false,
      controller: value10,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value10.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final value11Field = TextFormField(
      autofocus: false,
      controller: value11,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value11.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final value12Field = TextFormField(
      autofocus: false,
      controller: value12,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value12.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final value13Field = TextFormField(
      autofocus: false,
      controller: value13,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value13.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final value14Field = TextFormField(
      autofocus: false,
      controller: value14,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value14.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final value15Field = TextFormField(
      autofocus: false,
      controller: value15,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value15.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final value16Field = TextFormField(
      autofocus: false,
      controller: value16,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value16.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final value17Field = TextFormField(
      autofocus: false,
      controller: value17,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value17.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final value18Field = TextFormField(
      autofocus: false,
      controller: value18,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value18.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final value19Field = TextFormField(
      autofocus: false,
      controller: value19,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value19.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final value20Field = TextFormField(
      autofocus: false,
      controller: value20,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value20.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final value21Field = TextFormField(
      autofocus: false,
      controller: value21,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Empty");
        }
        return null;
      },
      onSaved: (value) {
        value21.text = value!;
      },
      textInputAction: TextInputAction.next,
      style:
      TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 14,
        color: HealinicTheme.darkText,
      ),
      textAlign: TextAlign.center,);

    final submitButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: HealinicTheme.buttonBgb,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),

          onPressed: () {
            if (_formKey.currentState!.validate()) {
            submit();
            Navigator.push(context, MaterialPageRoute(builder: (context) => BResultPage(),),);
            debugPrint('Clicked RaisedButton Button');
            } else {
              print('Form is not validated');
            }
          },
          child: Text(
            "Submit",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );


    return Scaffold(
      backgroundColor: HealinicTheme.mainTheme,
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[

          getAppBar(),
          getSub(),
          getScale(),
          Padding(
            padding: EdgeInsets.only(top: 280, left: 12, right: 12),
            child: Container(
              color: Colors.white,
              child: Form(
                key: _formKey,
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Table(
                        border: TableBorder.all(color: Colors.transparent),
                        columnWidths: {
                          0: FlexColumnWidth(0.5),
                          1: FlexColumnWidth(4.0),
                          2: FlexColumnWidth(2.8),
                        },
                        children: [
                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '1.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I was aware of dryness of my mouth',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value1Field,

                            ),
                          ]),

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '2.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I experienced breathing difficulty (e.g. excessively rapid breathing, breathlessness in the absence of physical exertion)',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value2Field,
                            ),
                          ]),

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '3.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I experienced trembling (e.g. in the hands)',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value3Field,

                            ),
                          ]),

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '4.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I was worried about situations in which I might panic and make a fool of myself',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value4Field,

                            ),
                          ]),

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '5.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I felt I was close to panic',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value5Field,

                            ),
                          ]),

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '6.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I was aware of the action of my heart in the absence of physical exertion (e.g. sense of heart rate increase, heart missing a beat)',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value6Field,

                            ),
                          ]),

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '7.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I felt scared without any good reason',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value7Field,
                            ),
                          ]),

                          ////////STRESS///////////////

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '8.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I found it hard to wind down',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value8Field,
                            ),
                          ]),

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '9.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I tended to over-react to situations',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value9Field,
                            ),
                          ]),

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '10.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I felt that I was using a lot of nervous energy',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value10Field,
                            ),
                          ]),

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '11.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I found myself getting agitated',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value11Field,
                            ),
                          ]),

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '12.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I found it difficult to relax',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value12Field,
                            ),
                          ]),

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '13.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I was intolerant of anything that kept me from getting on with what I was doing',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value13Field,
                            ),
                          ]),

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '14.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I felt that I was rather touchy',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value14Field,
                            ),
                          ]),

                          ///////Depression///////////

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '15.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I couldn’t seem to experience any positive feeling at all ',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value15Field,
                            ),
                          ]),

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '16.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I found it difficult to work up the initiative to do things',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value16Field,
                            ),
                          ]),

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '17.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I felt that I had nothing to look forward to',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value17Field,
                            ),
                          ]),

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '18.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I felt down-hearted and blue',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value18Field,
                            ),
                          ]),

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '19.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I was unable to become enthusiastic about anything',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value19Field,
                            ),
                          ]),

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '20.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I felt I wasn’t worth much as a person',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value20Field,
                            ),
                          ]),

                          ///////Question////////////
                          TableRow(children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5.0, bottom: 5.0),
                                child: Text(
                                  '21.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: HealinicTheme.darkText,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Text(
                                'I felt that life was meaningless',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontFamily: HealinicTheme.fontName),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: value21Field,
                            ),
                          ]),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: submitButton
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ]),
      ),
    );
  }

/////////////APPBAR///////////////////
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
              width: AppBar().preferredSize.height + 40,
              height: AppBar().preferredSize.height,
            ),
            Expanded(
              child: Center(
                child: Text(
                  'DASS-21',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Container(
              width: AppBar().preferredSize.height + 40,
              height: AppBar().preferredSize.height,
            )
          ],
        ),
      ),
    );
  }

/////////////SUBTITLE///////////
  Widget getSub() {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.only(top: 90, left: 15),
      child: Text(
        "Please answer the following question based on what you feel.",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: HealinicTheme.fontName,
          fontWeight: FontWeight.w300,
          color: HealinicTheme.grey,
          fontSize: 14,
        ),
      ),
    );
  }

/////////////RATING SCALE///////////
  Widget getScale() {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(top: 120, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("The rating scale is as follows: ",
                style: TextStyle(
                  fontFamily: HealinicTheme.fontName,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: HealinicTheme.titleWord,
                )),
            SizedBox(height: 5),
            Container(
              color: HealinicTheme.nearlyWhite,
              padding: EdgeInsets.only(left: 15),
              child: Table(
                border: TableBorder.all(color: Colors.transparent),
                columnWidths: {
                  ////Size of each column of the table
                  0: FlexColumnWidth(1),

                  1: FlexColumnWidth(8),
                },
                children: [
                  TableRow(children: [
                    Text('0',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: HealinicTheme.titleWord,
                        )),
                    Text('Did not apply to me at all',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: HealinicTheme.titleWord,
                        )),
                  ]),
                  TableRow(children: [
                    Text('1',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: HealinicTheme.titleWord,
                        )),
                    Text('Applied to me to some degree, or some of the time',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: HealinicTheme.titleWord,
                        )),
                  ]),
                  TableRow(children: [
                    Text('2',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: HealinicTheme.titleWord,
                        )),
                    Text(
                        'Applied to me to a considerable degree or a good part of time',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: HealinicTheme.titleWord,
                        )),
                  ]),
                  TableRow(children: [
                    Text('3',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: HealinicTheme.titleWord,
                        )),
                    Text('Applied to me very much or most of the time',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: HealinicTheme.titleWord,
                        )),
                  ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
