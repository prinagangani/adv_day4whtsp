import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/snehal.jpg"),),
              title: Text("My status"),
              subtitle: Text(
                "Tap to add status update",
                style: TextStyle(fontSize: 13),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Recent updates",
                    style: TextStyle(
                        fontSize: 12, color: Colors.grey.shade700),
                  )),
            ),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(backgroundImage: AssetImage("assets/images/snehal.jpg"),),
                      title: Text("Snehal"),
                      subtitle: Text(
                        "Today, 12:13 AM",
                        style: TextStyle(fontSize: 14),
                      ),
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
