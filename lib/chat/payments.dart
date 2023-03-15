import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentRoom extends StatefulWidget {
  const PaymentRoom({Key? key}) : super(key: key);

  @override
  State<PaymentRoom> createState() => _PaymentRoomState();
}

class _PaymentRoomState extends State<PaymentRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payments",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
        leading: IconButton(icon:Icon(Icons.arrow_back),onPressed: (){Navigator.pop(context);}),
        backgroundColor: Colors.teal.shade500,
      ),
    );
  }
}
