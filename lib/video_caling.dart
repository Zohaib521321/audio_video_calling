import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

import 'group_call.dart';
class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  final _textcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Zego Cloud Video Calling"),
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
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()..onOnlySelfInRoom= (context) {
        Navigator.pop(context);
      },
    )
    );
  }
}