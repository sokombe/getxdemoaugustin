 
import 'package:get/get.dart';
import 'package:getxdemo/controllers/homeController/homeController.dart';
import 'package:getxdemo/controllers/signin/signinController.dart';
import 'package:getxdemo/controllers/signup/signupController.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController(),fenix: true);
    Get.lazyPut<SignupController>(() => SignupController(),fenix: true);
    Get.lazyPut<homeController>(() => homeController (),fenix: true);

  }
}