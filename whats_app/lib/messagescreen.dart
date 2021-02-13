import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MessageScreen());
}

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.arrow_back,
                size: 25,
              ),
              SizedBox(
                height: 60,
                width: 31,
                child: CircleAvatar(
                  radius: 30,
                ),
              )
            ],
          ),
          title: Text('Aman'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.video_call),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.call),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            )
          ],
          backgroundColor: Colors.teal.shade700,
        ),
        body: Scaffold(
          backgroundColor: Colors.grey[300],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.black, width: 1.0, style: BorderStyle.solid),
            borderRadius: BorderRadius.all(
              Radius.circular(48.0),
            ),
          ),
          child: TextField(
            onSubmitted: (String text) {
              debugPrint(text);
            },
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.insert_emoticon,
                size: 28,
              ),
//              suffix: Align(alignment: Alignment.bottomRight,
//                child: FloatingActionButton(
//                  onPressed: null,
//                  child: Icon(Icons.mic),
//                ),
//              ),
              suffixIcon: Icon(Icons.send),
              hintText: 'Type a Message',
            ),
            scrollController: ScrollController(),
            scrollPhysics: ScrollPhysics(),
            onChanged: (String text) {
              debugPrint(text);
            },
            textInputAction: TextInputAction.next,
            toolbarOptions: ToolbarOptions(
              copy: true,
              cut: true,
              paste: true,
              selectAll: true,
            ),
          ),
        ),
      ),
    );
  }
}
