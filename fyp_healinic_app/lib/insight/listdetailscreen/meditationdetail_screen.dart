import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/insight/listviewmodel/meditation_datamodel.dart';

class MeditationDetailScreen extends StatelessWidget {
   MeditationDetailScreen(this.meditationData);
   final MeditationData meditationData;

   final Shader _linearGradient = LinearGradient(
     colors: [Colors.yellow, Colors.brown.shade100],
     begin: Alignment.centerLeft,
     end: Alignment.bottomRight,
   ).createShader(Rect.fromLTWH(0.0, 0.0, 320.0, 80.0)); // Creates a Shader for this gradient to fill the given rec



   @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: HealinicTheme.mainTheme,
       appBar: AppBar(
         centerTitle: true,
         title: Text(
           meditationData.name,
           style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
         ),
         elevation: 0,
         backgroundColor: HealinicTheme.nearlyWhite,
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
         child: Padding(
           padding: EdgeInsets.all(8.0),
           child: Column(
             children: [
               Container(
                 width: double.infinity,
                 height: 200,
                 child: Image.asset(
                   meditationData.image,
                   fit: BoxFit.fill,
                 ),
               ),
               SizedBox(
                 height: 15,
               ),

               Container(
                 width: double.infinity,
                 color: HealinicTheme.nearlyWhite,
                 child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(meditationData.t1,
                         style: TextStyle(
                             letterSpacing: 0.5,
                             height: 1.5,
                             color: HealinicTheme.buttonBgb,
                             fontFamily: HealinicTheme.fontName,
                             fontWeight: FontWeight.w500,
                             fontSize: 17
                         ),),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(meditationData.desc1,
                           textAlign: TextAlign.justify,
                           style: TextStyle(
                               letterSpacing: 0.5,
                               height: 1.5,
                               fontWeight: FontWeight.w700,
                               fontSize: 13
                           ),),
                       ),
                       SizedBox(
                         height: 15,
                       ),
                       Text(meditationData.t2,
                         style: TextStyle(
                             letterSpacing: 0.5,
                             height: 1.5,
                             color: HealinicTheme.buttonBgb,
                             fontFamily: HealinicTheme.fontName,
                             fontWeight: FontWeight.w500,
                             fontSize: 17
                         ),),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(meditationData.desc2,
                           textAlign: TextAlign.justify,
                           style: TextStyle(
                               letterSpacing: 0.5,
                               height: 1.5,
                               fontWeight: FontWeight.w700,
                               fontSize: 13
                           ),),
                       ),
                       SizedBox(
                         height: 15,
                       ),
                       Text(meditationData.t3,
                         style: TextStyle(
                             letterSpacing: 0.5,
                             height: 1.5,
                             color: HealinicTheme.buttonBgb,
                             fontFamily: HealinicTheme.fontName,
                             fontWeight: FontWeight.w500,
                             fontSize: 17
                         ),),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(meditationData.desc3,
                           textAlign: TextAlign.justify,
                           style: TextStyle(
                               letterSpacing: 0.5,
                               height: 1.5,
                               fontWeight: FontWeight.w700,
                               fontSize: 13
                           ),),
                       ),

                       SizedBox(
                         height: 15,
                       ),
                       Text(meditationData.t4,
                         style: TextStyle(
                             letterSpacing: 0.5,
                             height: 1.5,
                             color: HealinicTheme.buttonBgb,
                             fontFamily: HealinicTheme.fontName,
                             fontWeight: FontWeight.w500,
                             fontSize: 17
                         ),),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(meditationData.desc4,
                           textAlign: TextAlign.justify,
                           style: TextStyle(
                               letterSpacing: 0.5,
                               height: 1.5,
                               fontWeight: FontWeight.w700,
                               fontSize: 13
                           ),),
                       ),

                       SizedBox(
                         height: 15,
                       ),
                       Text(meditationData.t5,
                         style: TextStyle(
                             letterSpacing: 0.5,
                             height: 1.5,
                             color: HealinicTheme.buttonBgb,
                             fontFamily: HealinicTheme.fontName,
                             fontWeight: FontWeight.w500,
                             fontSize: 17
                         ),),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(meditationData.desc5,
                           textAlign: TextAlign.justify,
                           style: TextStyle(
                               letterSpacing: 0.5,
                               height: 1.5,
                               fontWeight: FontWeight.w700,
                               fontSize: 13
                           ),),
                       ),

                       SizedBox(
                         height: 15,
                       ),
                       Text(meditationData.t6,
                         style: TextStyle(
                             letterSpacing: 0.5,
                             height: 1.5,
                             color: HealinicTheme.buttonBgb,
                             fontFamily: HealinicTheme.fontName,
                             fontWeight: FontWeight.w500,
                             fontSize: 17
                         ),),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text(meditationData.desc6,
                           textAlign: TextAlign.justify,
                           style: TextStyle(
                               letterSpacing: 0.5,
                               height: 1.5,
                               fontWeight: FontWeight.w700,
                               fontSize: 13
                           ),),
                       ),
                       SizedBox(
                         height: 25,
                       ),
                     ],
                   ),
                 ),
               ),

               SizedBox(
                 height: 15,
               ),
               Text("- END -",
                 textAlign: TextAlign.center,
                 style: TextStyle(
                     fontSize: 25,
                     fontStyle: FontStyle.italic,
                     fontWeight: FontWeight.w900,
                     foreground: Paint()..shader = _linearGradient),),

               SizedBox(
                 height: 100,
               ),

             ],
           ),
         ),
       ),
     );
  }
}
