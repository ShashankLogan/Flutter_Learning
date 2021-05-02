import 'package:flutter/material.dart';
import 'pages/camera.dart';
import 'pages/chat_screen.dart';
import 'pages/status_screen.dart';
import 'pages/call_screen.dart';


class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this,initialIndex: 1);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Kaisan Ba?"),
        elevation: 0.7,
        bottom:new TabBar(
          tabs: <Widget>[
          new Tab(icon: new Icon(Icons.camera_alt)),
          new Tab(text: "CHATS"),
          new Tab(text: "STATUS"),
            new Tab(text:"CALLS")
        ],
        controller: _tabController,
        indicatorColor: Colors.white,
        ),
        actions: <Widget>[new Icon(Icons.search),new Icon(Icons.more_vert)],
      ),
      body: new TabBarView(children: <Widget>[
        new CameraScreen(),
        new ChatScreen(),
        new StatusScreen(),
        new CallsScreen()
      ],
      controller: _tabController,),
    floatingActionButton: new FloatingActionButton(onPressed: () => print("chats"),
    backgroundColor: Theme.of(context).accentColor,
    child: new Icon(Icons.message,color: Colors.white,),),
    );
  }
}
