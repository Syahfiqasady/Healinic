import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:fyp_healinic_app/map_page/kk/kk_list_data.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:android_intent/android_intent.dart';
import 'package:android_intent/flag.dart';

class KkListView extends StatelessWidget {
  const KkListView(
      {Key? key,
      this.kkData,
      this.animationController,
      this.animation,
      this.callback})
      : super(key: key);
  final VoidCallback? callback;
  final KkListData? kkData;
  final AnimationController? animationController;
  final Animation<double>? animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController!,
        builder: (BuildContext context, Widget? child) {
          return FadeTransition(
              opacity: animation!,
              child: Transform(
                transform: Matrix4.translationValues(
                    0.0, 50 * (1.0 - animation!.value), 0.0),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 16),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    onTap: callback,
                    child: Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade50,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              kkData!.name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              kkData!.caption,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextButton(
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 1),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.blue),
                                    )),
                                child: Text(
                                  'Directions',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                onPressed: () async {
                                  final AndroidIntent intent = AndroidIntent(
                                      action: 'action_view',
                                      data: Uri.encodeFull(kkData!.website),
                                      package: 'com.google.android.apps.maps');
                                  intent.launch();
                                })
                          ],
                        )),
                  ),
                ),
              ));
        });
  }
}
