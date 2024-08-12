import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,

        ),
        title: const Text(
          'First Screen',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
          alignment: Alignment.center,
          child: ElevatedButton(
              onPressed: () {
                Get.toNamed('/second');
              },
              child: const Text(
                'Go to Second Screen',
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),
              ))),
    );
    ;
  }
}
