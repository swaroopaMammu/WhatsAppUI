import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';

import '../widgets/listItem.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  var appConstant = AppConstants();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
        leading: IconButton(icon:Icon(Icons.arrow_back),onPressed: (){Navigator.pop(context);}),
        backgroundColor: Colors.teal.shade500,
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CircleAvatar(
                        backgroundImage: appConstant.assetList[0], radius: 30),
                  ),
                  Column(
                    children: <Widget>[
                      Text("Swaroopa",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                      Text("status",style:TextStyle(fontSize: 14)),
                    ],
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: appConstant.settingsItemList.length,
                  itemBuilder: (context, index) {
                    return ListItemRegular(i: index);
                  },
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("from",style: TextStyle(color: Colors.grey,fontSize: 10)),
                  SizedBox(height: 10),
                  Text("Meta")
                ],
              )
            ],
          ),
        ));
  }
}
