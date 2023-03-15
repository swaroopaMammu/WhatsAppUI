import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinkedDevices extends StatefulWidget {
  const LinkedDevices({Key? key}) : super(key: key);

  @override
  State<LinkedDevices> createState() => _LinkedDevicesState();
}

class _LinkedDevicesState extends State<LinkedDevices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Linked Devices",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
        leading: IconButton(icon:Icon(Icons.arrow_back),onPressed: (){Navigator.pop(context);}),
        backgroundColor: Colors.teal.shade500,
      ),
    );
  }
}
