import 'package:flutter/material.dart';
import 'package:whatsapp/call/calls.dart';
import 'package:whatsapp/chat/linkeddevices.dart';
import 'package:whatsapp/chat/payments.dart';
import 'package:whatsapp/chat/starredmessage.dart';
import 'package:whatsapp/chat/settings.dart';
import 'package:whatsapp/status/status.dart';
import 'package:whatsapp/chat/chats.dart';
import 'package:whatsapp/group/groups.dart';
import 'package:whatsapp/status/statusprivacy.dart';

void main() {
  runApp(const SplashScreen());
}

enum HomeDropDown { newGroup, newBroadCast, linkedDevice, starredMessage, payments, settings , statusPrivacy, clearCallLog }

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomeScreen(title: 'WhatsApp'),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeDropDown? dropDown;
  static const IconList = <IconData>[ Icons.groups,Icons.message,Icons.camera_alt,Icons.add_call ];

  List<PopupMenuEntry<HomeDropDown>> popUpMenuList(int index){

    switch(index){
      case 1: {
        return  [const PopupMenuItem( value: HomeDropDown.newGroup,
            child: Text("New Group")),
          const PopupMenuItem( value: HomeDropDown.newBroadCast,
              child: Text("New Broadcast")),
          const PopupMenuItem( value: HomeDropDown.linkedDevice,
              child: Text("Linked devices")),
          const PopupMenuItem( value: HomeDropDown.starredMessage,
              child: Text("Starred messages")),
          const PopupMenuItem( value: HomeDropDown.payments,
              child: Text("Payments")),
          const PopupMenuItem( value: HomeDropDown.settings,
              child: Text("Settings")) ];
      }
      case 2: {
        return  [
          const PopupMenuItem( value: HomeDropDown.statusPrivacy,
              child: Text("Status Privacy")),
          const PopupMenuItem( value: HomeDropDown.settings,
              child: Text("Settings"))
        ];
      }
      case 3: {
        return  [
          const PopupMenuItem( value: HomeDropDown.clearCallLog,
              child: Text("Clear Call Log")),
          const PopupMenuItem( value: HomeDropDown.settings,
              child: Text("Settings"))
        ];
      }
      default: {
        return  [
          const PopupMenuItem( value: HomeDropDown.settings,
              child: Text("Settings"))
        ];
      }
    }

  }

  void rightSideMenu(item){
    switch(item){
      case HomeDropDown.settings: {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Settings()),
        );
      }
 break;
      case HomeDropDown.payments: {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PaymentRoom()),
        );
      }
  break;
      case HomeDropDown.starredMessage:{
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const StarredMessage()),
        );
      }
  break;
      case HomeDropDown.linkedDevice:{
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LinkedDevices()),
        );
      }
  break;
      case HomeDropDown.statusPrivacy:{
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const StatusPrivacy()),
        );
      }
  break;

    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Builder(
        builder: (BuildContext co) {

          DefaultTabController.of(co)?.addListener(() {
              setState(() {
                print('----------> ${DefaultTabController.of(co)?.index}');
              });
            });
          return Scaffold(
            body: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                snap: false,
                pinned: true,
                floating: true,
                  title:  Text(widget.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  expandedHeight: 100,
                  backgroundColor: Colors.teal.shade500,
                    actions: <Widget>[
                      IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                    PopupMenuButton<HomeDropDown>(
                            onSelected: (HomeDropDown item){
                            setState(() {
                              rightSideMenu(item);
                            });
                            },
                            itemBuilder: (BuildContext context) =>
                              popUpMenuList(DefaultTabController.of(co)?.index??0)
                        ),
                    ],
                  bottom:  TabBar(tabs: <Widget>[
                    Tab(icon: Icon(Icons.groups)),
                    Tab(text: "Chats"),
                    Tab(text: "Status"),
                    Tab(text: "Calls"),
                  ]),
                ),
               SliverFillRemaining(
                 child: TabBarView(
                   children: <Widget>[
                     GroupsRoom(),
                     Chats(),
                     StatusRoom(),
                     CallsRoom(),
                   ],
                 ),
               )
              ],
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(IconList[DefaultTabController.of(co)?.index??0]),
              onPressed: (){},
              backgroundColor: Colors.teal.shade500,
            )
          );
        }
      ),
    );
  }
}

