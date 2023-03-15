import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/chat/disappear.dart';
import 'package:whatsapp/chat/viewcontact.dart';
import 'package:whatsapp/chat/wallpaper.dart';
import 'package:whatsapp/constants.dart';

import 'media.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({Key? key, required this.index}) : super(key: key);

  final int index ;
  @override
  State<ChatRoom> createState() => _ChatRoomState();
}
enum ChatDropDown {
  viewContact,
  media,
  search,
  notification,
  disappearMessage,
  wallpaper ,
  more,
  report,
  block,
  cleaChat,
  exportChat,
  addShortcut
}

class _ChatRoomState extends State<ChatRoom> {
  var appConstant = AppConstants();

  void showAlertDialog(){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text("Report ${appConstant.nameList[widget.index]}?"),
            content: Column(
              children: <Widget>[
                Text(appConstant.reportContent),
                SizedBox(height: 20),
                Text(appConstant.reportSub),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Checkbox(value: true, onChanged: null),
                    SizedBox(width: 10),
                    Text(appConstant.reportCheckbox)
                  ],
                )
              ],
            ),
            actions: <Widget>[
              TextButton(onPressed: null, child: Text("Cancel",style: TextStyle(color: Colors.teal.shade500 ))),
              TextButton(onPressed: null, child: Text("Report",style: TextStyle(color: Colors.teal.shade500 )))
            ],
          );
        }

    );
  }

  List<PopupMenuEntry<ChatDropDown>> popUpMenuList(bool fromMore){
      if(!fromMore)
        return [const PopupMenuItem( value: ChatDropDown.viewContact,
            child: Text("View contact")),
          const PopupMenuItem( value: ChatDropDown.media,
              child: Text("Media, links, and docs")),
          const PopupMenuItem( value: ChatDropDown.search,
              child: Text("Search")),
          const PopupMenuItem( value: ChatDropDown.notification,
              child: Text("Mute Notification")),
          const PopupMenuItem( value: ChatDropDown.disappearMessage,
              child: Text("Disappearing messages")),
          const PopupMenuItem( value: ChatDropDown.wallpaper,
              child: Text("Wallpaper")),
          const PopupMenuItem( value: ChatDropDown.more,
            child: Text("More")) ];
    else {
      return  [  PopupMenuItem( value: ChatDropDown.report,
    child: TextButton(onPressed: showAlertDialog, child: Text("Report",style: TextStyle(color: Colors.black)))),
    const PopupMenuItem( value: ChatDropDown.  block,
    child: TextButton(onPressed: null, child: Text("Block",style: TextStyle(color: Colors.black)))),
    const PopupMenuItem( value: ChatDropDown.cleaChat,
    child: TextButton(onPressed: null, child: Text("Clear chat",style: TextStyle(color: Colors.black)))),
    const PopupMenuItem( value: ChatDropDown.exportChat,
    child: TextButton(onPressed: null, child: Text("Export chat",style: TextStyle(color: Colors.black)))),
    const PopupMenuItem(child: TextButton(onPressed: null, child: Text("Add Shortcut",style: TextStyle(color: Colors.black))),
      value: ChatDropDown.addShortcut,)  ];
  }
  }
  void rightSideMenu(item) {
    switch (item) {
      case ChatDropDown.viewContact:
        {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ViewContact()),
          );
        }
        break;
      case ChatDropDown.media:
        {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Medias()),
          );
        }
        break;
      case ChatDropDown.disappearMessage:
        {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DisappearingMessage()),
          );
        }
        break;
      case ChatDropDown.wallpaper:
        {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Wallpaper()),
          );
        }
        break;
      case ChatDropDown.more:
        {
       showMenu(context: context, position: RelativeRect.fromLTRB(100, 40.0, 0, 0), items: popUpMenuList(true));
        } break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appConstant.nameList[widget.index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
        leading: IconButton(icon:Icon(Icons.arrow_back),onPressed: (){Navigator.pop(context);}),
        backgroundColor: Colors.teal.shade500,
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.videocam)),
          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
          PopupMenuButton<ChatDropDown>(
              onSelected: (ChatDropDown item){
                setState(() {
                  rightSideMenu(item);
                });
              },
              itemBuilder: (BuildContext context) =>
                  popUpMenuList(false)
          ),
        ],
      ),
    );
  }
}
