import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StarredMessage extends StatefulWidget {
  const StarredMessage({Key? key}) : super(key: key);

  @override
  State<StarredMessage> createState() => _StarredMessageState();
}

class _StarredMessageState extends State<StarredMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Starred Message",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
        leading: IconButton(icon:Icon(Icons.arrow_back),onPressed: (){Navigator.pop(context);}),
        backgroundColor: Colors.teal.shade500,
      ),
    );
  }
}
