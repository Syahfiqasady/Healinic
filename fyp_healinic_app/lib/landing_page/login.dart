import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/dass21/dassquest.dart';
import 'package:fyp_healinic_app/home_page/home.dart';
import 'package:fyp_healinic_app/homenav.dart';
import 'package:fyp_healinic_app/landing_page/signup.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // form key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // For CircularProgressIndicator.
  bool visible = false ;

  // editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

Future login() async{

  setState(() {
    visible = true ;
  });
// Getting value from Controller
  String email = emailController.text;
  String password = passwordController.text;

  var url = "https://healininc.000webhostapp.com/login.php";

  // Store all data with Param Name.
  var data = {'email': email, 'password' : password};

  // Starting Web API Call.
  var response = await http.post(Uri.parse(url), body: json.encode(data));

  // Getting Server response into variable.
  var message = jsonDecode(response.body);
// If the Response Message is Matched.
  if(message == 'Login Matched')
  {

    // Hiding the CircularProgressIndicator.
    setState(() {
      visible = false;
    });

    // Navigate to Profile Screen & Sending Email to Next Screen.
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DassQuesPage())
    );
  }else{

    // If Email or Password did not Matched.
    // Hiding the CircularProgressIndicator.
    setState(() {
      visible = false;
    });

    // Showing Alert Dialog with Response JSON Message.
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(message),
          actions: <Widget>[
            FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );}
}


  @override
  Widget build(BuildContext context) {
    //email field
    final emailField = TextFormField(
        autofocus: false,
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Please Enter Your Email");
          }
          // reg expression for email validation
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              .hasMatch(value)) {
            return ("Please Enter a valid email");
          }
          return null;
        },
        onSaved: (value) {
          emailController.text = value!;
        },
        textInputAction: TextInputAction.next,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: HealinicTheme.darkText,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: HealinicTheme.darkText,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //password field
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordController,
        obscureText: true,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Password is required for login");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid Password(Min. 6 Character)");
          }
        },
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.done,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: HealinicTheme.darkText,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: HealinicTheme.darkText,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: HealinicTheme.buttonBgb,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: 200,
          onPressed: () {
             login();

          },
          child: Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );
    Visibility(
        visible: visible,
        child: Container(
            margin: EdgeInsets.only(bottom: 30),
            child: CircularProgressIndicator()
        )
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: HealinicTheme.mainTheme,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HealinicTheme.mainTheme,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                  child: Form(
                //PENTING!
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          constraints:
                              BoxConstraints(maxWidth: 350, maxHeight: 350),
                          child: Image.asset(
                            'assets/Image/welcome.png',
                            height: 300,
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          emailField,
                          SizedBox(height: 25),
                          passwordField,
                          SizedBox(height: 25),
                          loginButton,
                          SizedBox(height: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Don't have an account? ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: HealinicTheme.darkText,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        if (_formKey.currentState!.validate()){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SignupPage()));
                                        }


                                      },
                                      child: Text(
                                        "SignUp",
                                        style: TextStyle(
                                            color: Colors.redAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    )
                                  ])
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
