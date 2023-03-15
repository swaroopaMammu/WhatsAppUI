import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewContact extends StatefulWidget {
  const ViewContact({Key? key}) : super(key: key);

  @override
  State<ViewContact> createState() => _ViewContactState();
}

class _ViewContactState extends State<ViewContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
        leading: IconButton(icon:Icon(Icons.arrow_back),onPressed: (){Navigator.pop(context);}),
        backgroundColor: Colors.teal.shade500,
      ),
    );
  }
}
