import 'dart:math';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:getxdemo/controllers/homeController/homeController.dart';
import 'package:getxdemo/models/Personne/Personne.dart';
import 'package:getxdemo/view/components/PersonCard.dart';

class Homepage extends GetView<homeController> {
  // var homcontroller = Get.find<homeController>();
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          appBar: AppBar(
            title: Text("Just getx"),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              controller.addPersonne(
                Personne(
                    age: random.nextInt(9),
                    nom: "augustin",
                    postnom: "Mubenga"),
              );
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                for (int i = 0; i < controller.listAllPersonnes.length; i++)
                  personCard(controller.listAllPersonnes[i], i)
              ],
            ),
          )),
    );
  }
}
