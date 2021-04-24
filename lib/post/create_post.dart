import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.keyboard_backspace),
        ),
        title: Text('Create a Post'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Save Draft',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w900),
            ),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        children: [
          Text(
            'Add a Caption',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w900,
                fontSize: 16.0),
          ),
          TextField(
            maxLines: null,
            decoration: InputDecoration.collapsed(
              hintText: 'E.g Flutter Rocks!!🚀🚀💙💙',
              hintStyle: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            height: 210.0,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: Colors.blue),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.cloud_upload_outlined),
                SizedBox(height: 10.0),
                Text('Upload a photo')
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Container(
            height: 120.0,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset('assets/images/cm0.jpeg',
                      height: 100.0, width: 100.0, fit: BoxFit.cover),
                ),
                SizedBox(width: 10.0),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset('assets/images/cm5.jpeg',
                      height: 100.0, width: 100.0, fit: BoxFit.cover),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            'Select Category',
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 10.0),
          Container(
            height: 150.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text('UI/UX'),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text(
                          'Design',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text(
                          'ART',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Text('Minimalistic'.toUpperCase()),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 50.0,
            width: MediaQuery.of(context).size.width - 20,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              onPressed: () {},
              child: Center(
                child: Text('Publish your post'.toUpperCase()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
