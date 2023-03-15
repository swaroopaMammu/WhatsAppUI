import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/listItem.dart';

import '../constants.dart';

class Chats extends StatefulWidget{
  const Chats({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _ChatsState();

}

class _ChatsState extends State<Chats> {
  var appConstant = AppConstants();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount:appConstant.chatList.length,
          itemBuilder: (context,i){
              return ListItem(i: i);
          },
        ),
      ),
    );
  }
}