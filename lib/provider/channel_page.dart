import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChannelPage extends StatelessWidget {
  const ChannelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChannelHeader(
          actions: [
        Icon(Icons.person,color: Colors.black,),
        IconButton(icon:Icon(Icons.more_vert,color: Colors.black),
        onPressed: (){
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: new Icon(Icons.block),
                      title: new Text('Block'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: new Icon(Icons.report),
                      title: new Text('Report'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              });
        },

        ),
      ]),
      body: Column(children: const [
        Expanded(
          child: MessageListView(),
        ),
        MessageInput(),
      ]),
    );
  }
}
