///Video Calling
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'dart:math' as math;
final String userID=math.Random().nextInt(1000).toString();
class audio_calling extends StatefulWidget {
  @override
  State<audio_calling> createState() => _audio_callingState();
}
class _audio_callingState extends State<audio_calling> {
  final _textcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Zego Cloud audio Calling"),
          centerTitle: true,
        ),
        body:
        Column(
          children: [
            Center(
              child: TextFormField(
                controller:_textcontroller,
                decoration: InputDecoration(
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (builder)=>Callpage(callingId: _textcontroller.text.toString())));
            }, child: Text("Join"))

          ],
        )
    );
  }
}
class Callpage extends StatelessWidget {
  String callingId;
  Callpage({required this.callingId});
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    ZegoUIKitPrebuiltCall(appID: ,
      appSign:"" , callID:callingId, userID: userID,
      userName: "User_$userID",
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall()..onOnlySelfInRoom= (context) {
        Navigator.pop(context);
      },
    )
    );
  }
}
