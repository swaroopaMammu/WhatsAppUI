import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupsRoom extends StatefulWidget{
  const GroupsRoom({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _GroupsRoomState();

}

class _GroupsRoomState extends State<GroupsRoom> {
  @override
  Widget build(BuildContext context) {
   return Center(
     child:  Text("Groups list"),
   );
  }
}