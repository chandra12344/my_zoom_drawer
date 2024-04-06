import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:test_project/controllers/zoom_controller.dart';
import 'package:test_project/zoom_screen/pages/chat_page.dart';
import 'package:test_project/zoom_screen/pages/dashboard_page.dart';
import 'package:test_project/zoom_screen/pages/feed_page.dart';
import 'package:test_project/zoom_screen/pages/profile_page.dart';
import 'package:test_project/zoom_screen/pages/search_page.dart';

class MainScreen extends StatefulWidget {
  late ZoomDrawerController z ;
   MainScreen({super.key,required this.z});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  MyZoomController myZoomController = MyZoomController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myZoomController.init();
  }
  int pageNo=2;
  final pages=[
    DashboardPage(),
    SearchPage(),
    ChatPage(),
    FeedPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HomePage")
        ,elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            widget.z.toggle!();
          },
        ),),
      body: pages[pageNo],
      bottomNavigationBar: CurvedNavigationBar(
        index:pageNo,
        buttonBackgroundColor: Colors.green,
        backgroundColor: Colors.grey.shade300,
        items: const [
          CurvedNavigationBarItem(
            child: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.search),
            label: 'Search',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.newspaper),
            label: 'Feed',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.perm_identity),
            label: 'Personal',
          ),
        ],
        onTap: (index) {
         pageNo=index;
       setState(() {
       });
        },
      ),
    );
  }
}
