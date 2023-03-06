import 'package:adv_day4whtsp/screens/call/view/call_view.dart';
import 'package:adv_day4whtsp/screens/chat/view/chat_view.dart';
import 'package:adv_day4whtsp/screens/status/view/status_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: "Chats",),
                Tab(text: "Status",),
                Tab(text: "Calls",),
              ],
            ),
            backgroundColor: Color(0xff00897b),
            title: Text("WhatsApp"),
            actions: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.camera_enhance_outlined),
                  SizedBox(width: 25),
                  Icon(Icons.search),
                  SizedBox(width: 25),
                  Icon(Icons.more_vert),
                ],
              ),
            ],
          ),
          body: TabBarView(
            children: [
              ChatScreen(),
              StatusScreen(),
              CallScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
