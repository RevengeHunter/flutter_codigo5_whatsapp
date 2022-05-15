import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.local_phone_rounded),
        onPressed: (){},
      ),
      body: ListView.builder( itemCount: 5, itemBuilder: (BuildContext context, int index){
        return Container(
          margin: const EdgeInsets.only(bottom: 8.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 26.0,
              backgroundImage: NetworkImage("https://images.pexels.com/photos/445109/pexels-photo-445109.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
              ),
            ),
            title: Text(
              "Daniela Farfán Lopez",
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w600,
                fontSize: 14.0,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.call_made_rounded,
                  size: 14.0,
                  color: Color(0xff01C851),
                ),
                const SizedBox(width: 6.0,),
                Text("Ayer 11:02 pm",
                  style: GoogleFonts.openSans(
                    fontSize: 12.0,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
              ],
            ),
            trailing: Icon(Icons.call,
              size: 20.0,
              color: Color(0xff01C851),
            ),
          ),
        );
      },),
    );
  }
}
