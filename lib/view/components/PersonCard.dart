import 'package:flutter/material.dart';
import 'package:getxdemo/controllers/homeController/homeController.dart';
import 'package:getxdemo/models/Personne/Personne.dart';
import 'package:get/get.dart';

Widget personCard(Personne personne, int position) {
  var homcontroller = Get.find<homeController>();

  return GestureDetector(
    onTap: () {
      homcontroller.deletePersonne(position);
    },
    onLongPress: () {
      var nombre_age_is_viewed = homcontroller.listAllPersonnes
          .where((perso) => perso.age == personne.age)
          .toList()
          .length;
      Get.snackbar("Nombre person age", nombre_age_is_viewed.toString());
    },
    child: Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.person),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(personne.nom!),
              Container(
                height: 2,
              ),
              Text(personne.postnom!),
            ],
          ),
          CircleAvatar(
            child: Text(personne.age.toString()),
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black.withOpacity(0.1), width: 1)),
    ),
  );
}
