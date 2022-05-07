import 'package:flutter/material.dart';
import 'package:flutter_codigo5_whatsapp/models/chat_model.dart';
import 'package:flutter_codigo5_whatsapp/pages/chat_detail_page.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemChatWidget extends StatelessWidget {
  ChatModel chatModel;

  ItemChatWidget({
    required this.chatModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatDetailPage()));
        },
        leading: CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(
            chatModel.avatarURL,
          ),
        ),
        title: Text(
          chatModel.userName,
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w600,
            fontSize: 14.0,
          ),
        ),
        subtitle: Text(
          chatModel.isTyping ? "Typing..." : chatModel.message,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.openSans(
            //fontWeight: FontWeight.w600,
            fontSize: 13.0,
            color: chatModel.isTyping
                ? Color(0xff01C851)
                : Colors.black.withOpacity(0.4),
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              chatModel.time,
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                color: chatModel.countMessage > 0 ? Colors.green.withOpacity(0.8) : Colors.black.withOpacity(0.5),
                fontSize: 10.0,
              ),
            ),
            chatModel.countMessage != 0
                ? Container(
                    width: 20,
                    height: 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    child: Text(
                      chatModel.countMessage.toString(),
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                    ),
                  )
                : Icon(
                    Icons.check,
                    color: Colors.green,
                    size: 15.0,
                  ),
          ],
        ),
      ),
    );
  }
}
