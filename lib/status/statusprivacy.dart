import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusPrivacy extends StatefulWidget {
  const StatusPrivacy({Key? key}) : super(key: key);

  @override
  State<StatusPrivacy> createState() => _StatusPrivacyState();
}

class _StatusPrivacyState extends State<StatusPrivacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Status Privacy",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
        leading: IconButton(icon:Icon(Icons.arrow_back),onPressed: (){Navigator.pop(context);}),
        backgroundColor: Colors.teal.shade500,
      ),
    );
  }
}
