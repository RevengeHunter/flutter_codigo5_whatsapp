import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(bottom: 8.0),
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      leading: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 26.0,
                            backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/38554/girl-people-landscape-sun-38554.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 20.0,
                            width: 20.0,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.white,width: 2.3,),
                            ),
                            child: Icon(Icons.add,color: Colors.white,size: 15,),
                          ),
                        ],
                      ),
                      title: Text(
                        "Mi estado",
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                        ),
                      ),
                      subtitle: Text(
                        "Añade una actualización",
                        style: GoogleFonts.openSans(
                          fontSize: 12.0,
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 1.0,
              horizontal: 20.0,
            ),
            child: Text(
              "Recientes",
              style: GoogleFonts.openSans(
                fontSize: 12.0,
                color: Colors.black.withOpacity(0.6),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 2.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 26.0,
                      backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/6816858/pexels-photo-6816858.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                      ),
                    ),
                    title: Text(
                      "Murray Light",
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                      ),
                    ),
                    subtitle: Text(
                      "Hoy 09:25 am",
                      style: GoogleFonts.openSans(
                        fontSize: 12.0,
                        color: Colors.black.withOpacity(0.4),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 1.0,
              horizontal: 20.0,
            ),
            child: Text(
              "Vistos",
              style: GoogleFonts.openSans(
                fontSize: 12.0,
                color: Colors.black.withOpacity(0.6),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 2.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 26.0,
                      backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/445109/pexels-photo-445109.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                      ),
                    ),
                    title: Text(
                      "Daniela Farfán Lopez",
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                      ),
                    ),
                    subtitle: Text(
                      "Ayer 11:02 pm",
                      style: GoogleFonts.openSans(
                        fontSize: 12.0,
                        color: Colors.black.withOpacity(0.4),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
