import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppConstants{


  var chatList = <String>["hi","nooo...","I know..","I'm fine","How you doing !!","I don't have a pla..."];
  var assetList = <AssetImage>[ AssetImage('lib/assets/chan.jpg'),AssetImage('lib/assets/rach.jpg'),AssetImage('lib/assets/mon.jpg'),AssetImage('lib/assets/ros.jpg'),
    AssetImage('lib/assets/joy.jpg'),AssetImage('lib/assets/pheb.jpg')];
  var timeList = <String>["1:20 pm","3:00 pm","12:00 am","Yesterday","13/01/2023","12/01/2023"];
  var nameList = <String>["Chandler Bing","Rachel Green","Monica Geller","Ross Geller","Joey Tribiani","Pheobe buffey"];
  var noList = <int>[1,3,2,6,12,4];
  var reportContent = "The kast 5 messages from this contact will be forwarded to whatsApp. If you block this contact and delete the chat, messages will be removed from this device and your device on the newer version of whatsApp";
  var reportSub = "This contact will not be notified";
  var reportCheckbox = "Block contact and delete chat";
  var settingsItemList = <String>["Account","Avatar","Privacy","Chats","Notifications","Storage and data","App langauge","Help","Invite a friend"];
  var settingsItemSubDesc = <String>[
    "Security notification, change number",
    "Create, edit, profile photo",
    "block contact, disappearing messages",
    "Theme, wallpapers, chat history",
    "Message, group & call tones",
    "Network usage, auto-download",
    "English (phone's language",
    "Help centre, contact us, privacy policy",
    ""
  ] ;
  var settingsIconlist = <IconData>[ Icons.key,Icons.face,Icons.lock,Icons.chat,Icons.notifications,Icons.data_saver_off_rounded,Icons.language,Icons.help_outline_outlined,Icons.people ];
}