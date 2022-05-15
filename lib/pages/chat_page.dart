import 'package:flutter/material.dart';
import 'package:flutter_codigo5_whatsapp/widgets/item_chat_widget.dart';

import '../data/data_dummy.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: (){},
      ),
      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemChatWidget(
            chatModel: chatList[index],
          );
        },
      ),
    );
  }
}
