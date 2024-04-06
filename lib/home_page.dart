import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:test_project/controllers/zoom_controller.dart';
import 'package:test_project/zoom_screen/main_screen.dart';
import 'package:test_project/zoom_screen/menu_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
MyZoomController myZoomController=MyZoomController();

final ZoomDrawerController z = ZoomDrawerController();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    myZoomController.init();
  }
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: z,
      borderRadius: 50,
      openCurve: Curves.fastOutSlowIn,
      slideWidth: MediaQuery.of(context).size.width * 0.7,
      duration: const Duration(milliseconds: 500),
      menuScreenTapClose: true,
      menuBackgroundColor: Colors.blue,
      mainScreen:  MainScreen(z: z),
      menuScreen: const MenuScreen(),
    );
  }
}
