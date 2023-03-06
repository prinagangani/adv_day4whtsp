import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: ListView.builder(itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(backgroundImage: AssetImage("assets/images/snehal.jpg"),),
                      title: Text("Snehal"),
                      subtitle: Text("ok byee"),
                      trailing: Text("9:50 AM",style: TextStyle(fontSize: 11),),
                    );
                  },itemCount: 10,),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton:  FloatingActionButton(backgroundColor: Color(0xff00897b),onPressed:(){},child: Icon(Icons.chat,),),
      ),
    );
  }
}
