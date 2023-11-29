import 'package:flutter/material.dart';
import 'package:whysapp/screens/calltab.dart';
import 'package:whysapp/screens/camerascreen.dart';
import 'package:whysapp/screens/chattab.dart';
import 'package:whysapp/screens/statustab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            actions: [
              InkWell(
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onTap: () {}),
              PopupMenuButton(
                  iconColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(10)),
                  itemBuilder: (context) {
                    return [
                      const PopupMenuItem(child: Text("New group")),
                      const PopupMenuItem(child: Text("New broadcast")),
                      const PopupMenuItem(child: Text("Linked devies")),
                      const PopupMenuItem(child: Text("starred messages")),
                      const PopupMenuItem(child: Text("settings")),
                    ];
                  })
            ],
            backgroundColor: const Color.fromARGB(255, 0, 58, 97),
            title: const Text(
              " WhysApp",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  iconMargin: EdgeInsets.all(100),
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  child: Text(
                    "CHATS",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    "STATUS",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    "CALLS",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              labelColor: Colors.white,
            ),
          ),
          body: const TabBarView(children: [
            CameraScreen(),
            ChatsTab(),
            StatusTab(),
            CallTab(),
          ])),
    );
  }
}
