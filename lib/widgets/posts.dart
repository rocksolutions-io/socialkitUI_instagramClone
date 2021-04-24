import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isLiked = Random().nextBool();
    bool isBookmark = Random().nextBool();

    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200.0,
                    decoration: BoxDecoration(
                      // color: Colors.purple,
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/cm${Random().nextInt(9)}.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal:10),
                    leading: CircleAvatar(
                      backgroundColor: Colors.red,
                      backgroundImage: AssetImage('assets/images/cm${Random().nextInt(5)}.jpeg'),
                      radius: 25.0,
                    ),
                    title: Text(
                      'Skye Townsend',style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'February ${Random().nextInt(31)}, 2021',
                    ),
                    trailing: Wrap(
                      children: [
                        isLiked
                            ? Icon(CupertinoIcons.heart)
                            : Icon(CupertinoIcons.heart_fill,
                                color: Colors.red),
                                SizedBox(width:20.0),
                        isBookmark
                            ? Icon(Icons.bookmark_outline)
                            : Icon(Icons.bookmark),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
