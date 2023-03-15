import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallsRoom extends StatefulWidget{
  const CallsRoom({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _CallsRoomState();

}

class _CallsRoomState extends State<CallsRoom> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Text("Calls list"),
    );
  }
}