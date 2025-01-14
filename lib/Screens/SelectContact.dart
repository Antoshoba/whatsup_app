import 'package:flutter/material.dart';

import '../CustomUI/ButtonCard.dart';
import '../CustomUI/ContactCard.dart';
import '../Model/ChatModel.dart';
import 'CreateGroup.dart';

class SelectContact extends StatefulWidget {
  SelectContact({Key? key}) : super(key: key);

  @override
  _SelectContactState createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> contacts = [
      ChatModel(
        name: "Dev Stack",
        status: "A full stack developer",
        isGroup: false,
        currentMessage: "Hi",
        time: "4:00",
        icon: "person.svg",
        id: 1,
      ),
      ChatModel(
        name: "Balram",
        status: "Flutter Developer...........",
        isGroup: false,
        currentMessage: "Hi Shoba",
        time: "13:00",
        icon: "person.svg",
        id: 2,
      ),
      ChatModel(
        name: "Saket",
        status: "Web developer...",
        isGroup: false,
        currentMessage: "Hi Shobi",
        time: "8:00",
        icon: "person.svg",
        id: 3,
      ),
      ChatModel(
        name: "Bhanu Dev",
        status: "App developer....",
        isGroup: false,
        currentMessage: "Hi, What are u doing?",
        time: "2:00",
        icon: "person.svg",
        id: 4,
      ),
      ChatModel(
        name: "Collins",
        status: "Raect developer..",
        isGroup: true,
        currentMessage: "Hi Everyone",
        time: "2:00",
        id: 5,
        icon: "group.svg",
      ),
      ChatModel(
        name: "Kishor",
        status: "Full Stack Web",
        isGroup: true,
        currentMessage: "Hi Everyone",
        time: "2:00",
        id: 6,
        icon: "group.svg",
      ),
      // ChatModel(name: "Testing1", status: "Example work"),
      // ChatModel(name: "Testing2", status: "Sharing is caring"),
      // ChatModel(name: "Divyanshu", status: "....."),
      // ChatModel(name: "Helper", status: "Love you Mom Dad"),
      // ChatModel(name: "Tester", status: "I find the bugs"),
    ];

    return Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Contact",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "256 contacts",
                style: TextStyle(
                  fontSize: 13,
                ),
              )
            ],
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.search,
                  size: 26,
                ),
                onPressed: () {}),
            PopupMenuButton<String>(
              padding: EdgeInsets.all(0),
              onSelected: (value) {
                print(value);
              },
              itemBuilder: (BuildContext contesxt) {
                return [
                  PopupMenuItem(
                    child: Text("Invite a friend"),
                    value: "Invite a friend",
                  ),
                  PopupMenuItem(
                    child: Text("Contacts"),
                    value: "Contacts",
                  ),
                  PopupMenuItem(
                    child: Text("Refresh"),
                    value: "Refresh",
                  ),
                  PopupMenuItem(
                    child: Text("Help"),
                    value: "Help",
                  ),
                ];
              },
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: contacts.length + 2,
            itemBuilder: (context, index) {
              if (index == 0) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => CreateGroup()));
                  },
                  child: ButtonCard(
                    icon: Icons.group,
                    name: "New group",
                  ),
                );
              } else if (index == 1) {
                return ButtonCard(
                  icon: Icons.person_add,
                  name: "New contact",
                );
              }
              return ContactCard(
                contact: contacts[index - 2],
              );
            }));
  }
}
