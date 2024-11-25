import 'package:flutter/material.dart';
import 'package:whatsup_app/CustomUI/CustomCard.dart';

import '../CustomUI/ButtonCard.dart';
import '../Model/ChatModel.dart';
import '../Screens/Homescreen.dart';
import '../Screens/SelectContact.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key, required this.chatmodels, required this.sourchat});
  final List<ChatModel> chatmodels;
  final ChatModel sourchat;
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chatmodels = [
    ChatModel(
      name: "Nishanth",
      isGroup: false,
      currentMessage: "Hi",
      time: "4:00",
      icon: "person.svg",
      id: 1,
      status: 'Online',
    ),
    ChatModel(
      name: "Thilaks",
      isGroup: false,
      currentMessage: "Hi Shoba",
      time: "13:00",
      icon: "person.svg",
      id: 2,
      status: '',
    ),
    ChatModel(
      name: "Santo nino",
      isGroup: false,
      currentMessage: "Hi Shobi",
      time: "8:00",
      icon: "person.svg",
      id: 3,
      status: '',
    ),
    ChatModel(
      name: "Ananthi",
      isGroup: false,
      currentMessage: "Hi, What are u doing?",
      time: "2:00",
      icon: "person.svg",
      id: 4,
      status: '',
    ),
    ChatModel(
      name: "Flowers",
      isGroup: true,
      currentMessage: "Hi Everyone",
      time: "2:00",
      id: 5,
      icon: "group.svg",
      status: '',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => SelectContact()));
        },
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
        itemCount: widget.chatmodels.length,
        itemBuilder: (contex, index) => CustomCard(
          chatModel: widget.chatmodels[index],
          sourchat: widget.sourchat,
        ),
      ),
      // body: ListView(
      //   children: [CustomCard(), CustomCard(chatModel: null,)],
      // )
      // body: ListView.builder(
      //     itemCount: chatmodels.length,
      //     itemBuilder: (contex, index) => InkWell(
      //           onTap: () {
      //             // sourceChat = chatmodels.removeAt(index);
      //             Navigator.pushReplacement(
      //                 context,
      //                 MaterialPageRoute(
      //                     builder: (builder) => Homescreen(
      //                           chatmodels: chatmodels,
      //                           // sourchat: sourceChat,
      //                         )));
      //           },
      //           // child: ButtonCard(
      //           //   name: chatmodels[index].name,
      //           //   icon: Icons.person,
      //           // ),
      //         )),
      // body: ListView.builder(
      //   itemCount: 10,
      //   itemBuilder: (contex, index) => CustomCard(
      //     chatModel:  chatmodels,
      //     // sourchat: widget.sourchat,
      //   ),
      // ),
    );
  }
}
