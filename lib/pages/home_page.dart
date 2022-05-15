import 'package:flutter/material.dart';
import 'package:flutter_codigo5_whatsapp/pages/status_page.dart';

import 'call_page.dart';
import 'chat_page.dart';

import '../data/data_dummy.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int CountPendingChat() {
    int count = 0;
    chatList.forEach((element) {
      if (element.countMessage != 0) {
        count++;
      }
    });
    return count;
  }
  //chatModel.countMessage != 0

  // TabController _tabController = TabController(length: 4, vsync: vsync);
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
            ),
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "CHATS",
                  ),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffB5D9D4),
                    ),
                    child: FittedBox(
                      child: (CountPendingChat() != 0) ? Text(
                        CountPendingChat().toString(),style: TextStyle(
                        color: Color(0xff065E52),
                        fontSize: 5,
                      ),
                      ) : Text(""),
                    ),
                  ),
                ],
              ),
            ),
            Tab(
              child: Text(
                "STATUS",
              ),
            ),
            Tab(
              child: Text(
                "CALLS",
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
              child: Text(
            "Camara",
          )),
          Center(
            child: ChatPage(),
          ),
          Center(
            child: StatusPage(),
          ),
          Center(
            child: CallPage(),
          ),
        ],
      ),
    );
  }
}
