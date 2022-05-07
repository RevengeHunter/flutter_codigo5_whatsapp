import 'package:flutter/material.dart';
import 'package:flutter_codigo5_whatsapp/pages/status_page.dart';

import 'call_page.dart';
import 'chat_page.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: (){},
      ),
      appBar: AppBar(
        title: Text("WhatsApp",),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,),),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,),)
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          tabs: [Tab(icon: Icon(Icons.camera_alt),),Tab(child: Text("CHATS",),),Tab(child: Text("STATUS",),),Tab(child: Text("CALLS",),),],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text("Camara",)),
          Center(child: ChatPage(),),
          Center(child: StatusPage(),),
          Center(child: CallPage(),),
        ],
      ),
    );
  }
}
