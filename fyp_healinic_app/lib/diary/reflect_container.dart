import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';

class ReflectCont extends StatelessWidget {

  const ReflectCont({required this.inputText, required this.subText});
  final String inputText;
  final String subText;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 350,
            decoration: BoxDecoration(
              color: HealinicTheme.reflectcont,
              borderRadius: BorderRadius.circular(5.0)
            ),
            child: Column(
              children: [
                Text(inputText, textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: HealinicTheme.darkerText,
                  fontSize: 18
                ),),
                Divider(
                  height: 10.0,
                  color: Colors.grey,
                ),
                Text(subText,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: HealinicTheme.fontName,
                      color: HealinicTheme.grey.withOpacity(0.5),
                      fontSize: 12
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: HealinicTheme.fontName,

                    ),
                    maxLines: null,//scrollable
                    autofocus: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Write as much as you want',
                      hintStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: HealinicTheme.grey.withOpacity(0.5)
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(color: Colors.teal),

                      )
                    ),
                  ),
                )
              ],
            ),

          )
        ],
      ),

    );
  }
}
