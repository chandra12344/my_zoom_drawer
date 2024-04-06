import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class MyZoomController extends GetxController{
  late ZoomDrawerController z;
  init(){
   z = ZoomDrawerController();
  }
}