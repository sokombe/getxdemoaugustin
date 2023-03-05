import 'package:get/get.dart';
import 'package:getxdemo/models/Personne/Personne.dart';

class homeController extends GetxController {
  var listAllPersonnes = <Personne>[].obs;
  // var listAllPersonnes = <int>[].obs;

  var int_var = 0.obs;
  var string_var = "".obs;
  var map_var = {}.obs;

  Future<void> addPersonne(Personne personne) async{
    listAllPersonnes.add(personne);
  }
  Future<void> deletePersonne(int position) async{
    listAllPersonnes.removeAt(position);
  }
//*********************************** */

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("augustin is kemit");
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("augustin is boudiste baiseur");
  }
}
