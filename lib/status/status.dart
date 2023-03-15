import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusRoom extends StatefulWidget{
  const StatusRoom({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _StatusRoomState();

}

class _StatusRoomState extends State<StatusRoom> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Text("Status list"),
    );
  }
}