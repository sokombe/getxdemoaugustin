import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getxdemo/helpers/binding_Routes/Bindings.dart';
import 'package:getxdemo/view/pages/home.dart';


void main() {
  runApp( GetMaterialApp(
  debugShowCheckedModeBanner: false,
  initialBinding: AllBindings(),
  home: Homepage(),
  ));
}
