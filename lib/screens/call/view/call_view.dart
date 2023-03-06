import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.link),backgroundColor: Color(0xff00897b),),
              title: Text("Create call link"),
              subtitle: Text(
                "Share a link for your WhatsApp call",
                style: TextStyle(fontSize: 13),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Recent",
                    style: TextStyle(
                        fontSize: 12, color: Colors.grey.shade700),
                  )),
            ),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading:
                      CircleAvatar(backgroundImage: AssetImage("assets/images/snehal.jpg"),),
                      title: Text("Snehal"),
                      subtitle: Text(
                        "Today, 12:13 AM",
                        style: TextStyle(fontSize: 14),
                      ),
                      trailing: Icon(Icons.video_call_rounded,color: Color(0xff00897b),),
                    );
                  },
                  itemCount: 10),
            ),
          ],
        ),
        floatingActionButton:  FloatingActionButton(
          backgroundColor: Color(0xff00897b),
          onPressed: () {},
          child: Icon(
            Icons.camera_enhance_outlined,
          ),
        ),
      ),
    );

  }
}