import 'package:flutter/material.dart';
import 'package:whatsapp/chat/chatroom.dart';
import 'package:whatsapp/constants.dart';
class  ListItem  extends StatefulWidget {
  const ListItem({Key? key, required this.i}) : super(key: key);
  final int i;
  @override
  State<StatefulWidget> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  var appConstant = AppConstants();
  void itemClicked(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  ChatRoom(index: widget.i)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: itemClicked,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircleAvatar(
                backgroundImage: appConstant.assetList[widget.i], radius: 30),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(appConstant.nameList[widget.i],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  textAlign: TextAlign.left),
              Text(appConstant.chatList[widget.i],
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ))
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 16, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(appConstant.timeList[widget.i],
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 10)),
                CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 10,
                    child: Text(appConstant.noList[widget.i].toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ))),
              ],
            ),
          )
        ],
      ),
    );
  }
}


class ListItemRegular extends StatefulWidget {
  const ListItemRegular({Key? key, required this.i}) : super(key: key);
final int i;
  @override
  State<ListItemRegular> createState() => _ListItemRegularState();
}

class _ListItemRegularState extends State<ListItemRegular> {
  var appConstant = AppConstants();
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: null,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(appConstant.settingsIconlist[widget.i])
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Text>[
              Text(appConstant.settingsItemList[widget.i]),
              Text(appConstant.settingsItemSubDesc[widget.i])
            ],
          )
        ],
      ),
    );
  }
}
