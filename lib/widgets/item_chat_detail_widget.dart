import 'package:flutter/material.dart';
import 'package:flutter_codigo5_whatsapp/models/chat_message.dart';

class ItemChatDetailWidget extends StatelessWidget {

  ChatMessage chatMessage;

  ItemChatDetailWidget({required this.chatMessage});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: chatMessage.messageType == "other" ? Alignment.topLeft : Alignment.topRight,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0,),
        margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0,),
        decoration: BoxDecoration(
          color: chatMessage.messageType == "other" ? Colors.white : Color(0xffE3FFC4),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(14.0),
              bottomRight: Radius.circular(14.0),
              topRight: chatMessage.messageType == "other" ? Radius.circular(14.0) : Radius.circular(0.0),
              topLeft: chatMessage.messageType == "other" ? Radius.circular(0.0) : Radius.circular(14.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              offset: const Offset(4, 4),
              blurRadius: 10,
            ),
          ],
        ),
        child: Text(
          chatMessage.messageContent,
        ),
      ),
    );
  }
}
