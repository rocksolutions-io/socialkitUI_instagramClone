import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialapp_uikit/utils/data.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.filter_list,
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
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 25,
                child: Center(
                  child: Icon(CupertinoIcons.heart_fill, color: Colors.red),
                ),
              ),
              contentPadding: EdgeInsets.all(0),
              title: Text(
                notif['notif'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                notif['time'],
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 11,
                ),
              ),
              trailing: Icon(Icons.more_vert),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
