import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fyp_healinic_app/main.dart';
import 'package:http/http.dart' as http;

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // string for displaying the error Message
  String? errorMessage;

  // our form key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // editing Controller
  final userNameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmPasswordEditingController = new TextEditingController();
  final ageEditingController = new TextEditingController();
  final genderEditingController = new TextEditingController();

  Future register() async {
    var url = "https://healininc.000webhostapp.com/signUpUserApi.php";
    var response = await http.post(Uri.parse(url), body: {
      "fullName": userNameEditingController.text,
      "email": emailEditingController.text,
      "password": passwordEditingController.text,
      "age": ageEditingController.text,
      "gender": genderEditingController.text,
    });
    final data = response.body.toString();

    if (data == "Error") {
      Fluttertoast.showToast(
          msg: "User Alreader Exist",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      Fluttertoast.showToast(
          msg: "Sucessfully Registered",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    //user name field
    final userNameField = TextFormField(
        autofocus: false,
        controller: userNameEditingController,
        keyboardType: TextInputType.name,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{3,}$');
          if (value!.isEmpty) {
            return ("User Name cannot be Empty");
          }
          if (!regex.hasMatch(value)) {
            return ("Min. 3 Character");
          }
          return null;
        },
        onSaved: (value) {
          userNameEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: HealinicTheme.darkText,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "User Name",
          hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: HealinicTheme.darkText,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //gender field
    final genderField = TextFormField(
        autofocus: false,
        controller: genderEditingController,
        keyboardType: TextInputType.name,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{3,}$');
          if (value!.isEmpty) {
            return ("Gender cannot be empty");
          }
          if (!regex.hasMatch(value)) {
            return ("Gender should be Female or Male");
          }
          return null;
        },
        onSaved: (value) {
          genderEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: HealinicTheme.darkText,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.female_rounded),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Male or Female?",
          hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: HealinicTheme.darkText,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //gender field
    final ageField = TextFormField(
        autofocus: false,
        controller: ageEditingController,
        keyboardType: TextInputType.name,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Age cannot be empty");
          }
          return null;
        },
        onSaved: (value) {
          ageEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: HealinicTheme.darkText,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.format_list_numbered_rounded),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Your Age",
          hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: HealinicTheme.darkText,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //email field
    final emailField = TextFormField(
        autofocus: false,
        controller: emailEditingController,
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
          userNameEditingController.text = value!;
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
        controller: passwordEditingController,
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
          userNameEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
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

    //confirm password field
    final confirmPasswordField = TextFormField(
        autofocus: false,
        controller: confirmPasswordEditingController,
        obscureText: true,
        validator: (value) {
          if (confirmPasswordEditingController.text !=
              passwordEditingController.text) {
            return "Password don't match";
          }
          return null;
        },
        onSaved: (value) {
          confirmPasswordEditingController.text = value!;
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
          hintText: "Confirm Password",
          hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: HealinicTheme.darkText,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
    //signup button
    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      color: HealinicTheme.registrationButton,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          minWidth: 200,
          onPressed: () {
            if (_formKey.currentState!.validate()){
              register();
            }

          },
          child: Text(
            "Sign Up",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );

    return Scaffold(
      resizeToAvoidBottomInset: true,
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
          width: double.infinity,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Create an account, It's free ",
                      style: TextStyle(
                          fontSize: 15,
                          color: HealinicTheme.darkText,
                          fontWeight: FontWeight.w800),
                    ),
                    Container(
                      constraints:
                          BoxConstraints(maxWidth: 350, maxHeight: 350),
                      child: Image.asset(
                        'assets/Image/relax_image.png',
                        height: 300,
                      ),
                    )
                  ],
                ),
                Container(
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // Shadow position
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(18),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      userNameField,
                      SizedBox(height: 20),
                      ageField,
                      SizedBox(height: 20),
                      genderField,
                      SizedBox(height: 20),
                      emailField,
                      SizedBox(height: 20),
                      passwordField,
                      SizedBox(height: 20),
                      confirmPasswordField,
                    ],
                  ),
                ),
                SizedBox(height: 20),
                signUpButton,
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
