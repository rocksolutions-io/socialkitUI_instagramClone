import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:socialapp_uikit/utils/data.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Messages",
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Feather.search,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        separatorBuilder: (BuildContext context, int index) {
          return Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 0.5,
              width: MediaQuery.of(context).size.width / 1.3,
              child: Divider(),
            ),
          );
        },
        itemCount: notifications.length,
        itemBuilder: (BuildContext context, int index) {
          Map notif = notifications[index];
          Map message = chats[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage:
                    AssetImage('assets/images/cm${Random().nextInt(5)}.jpeg'),
                radius: 25.0,
              ),
              contentPadding: EdgeInsets.all(0),
              title: Text(
                notif['name'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                message['msg'],
                style: TextStyle(),
              ),
              trailing: Wrap(
                children: [
                  Column(
                    children: [
                      Icon(Icons.thumb_up_outlined),
                      Icon(CupertinoIcons.reply, size: 15.0),
                    ],
                  )
                ],
              ),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
