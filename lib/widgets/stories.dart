import 'dart:math';

import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int count = 5;
    return Container(
      height: 80.0,
      child: ListView.builder(
        itemCount: count + 1,
        reverse: true,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          if (index == count) {
            return Padding(
              padding: EdgeInsets.all(7.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: new Offset(0.0, 0.0),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.5),
                  child: CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.grey[300],
                    child: Center(
                      child: Icon(Icons.add, color: Colors.blue),
                    ),
                  ),
                ),
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.transparent,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    offset: new Offset(0.0, 0.0),
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage(
                      'assets/images/cm${Random().nextInt(10)}.jpeg'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
