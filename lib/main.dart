///Video Calling
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zegocloud/Audio_calling.dart';
import 'package:zegocloud/group_call.dart';
import 'package:zegocloud/live_home.dart';
import 'dart:math' as math;

import 'package:zegocloud/video_caling.dart';
final String userID=math.Random().nextInt(1000).toString();
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ZegoCloud Services"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>MyHomePage()));
            }, child: Text("Video Calling")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>audio_calling()));
            }, child: Text("Audio Calling")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
            }, child: Text("Live Streaming")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>group_calling()));
            }, child: Text("Group calling")),
          ],
        ),
      ),
    );
  }
}

