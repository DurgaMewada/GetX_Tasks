import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/Controller_counterApp.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    ControllerCounterapp counterController = Get.put(ControllerCounterapp());
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu),
        title: const Text(
          'Counter app',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                counterController.count.value.toString(),
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 18,),
            FloatingActionButton(
              backgroundColor: Colors.black54,
                onPressed: () {
                  counterController.decrement();
                },
                child: const Icon(
                  Icons.remove,color: Colors.white,
                )),
            SizedBox(width: 190,),
            FloatingActionButton(
              backgroundColor: Colors.black54,
              onPressed: () {
                counterController.increment();
              },
              child: const Icon(
                Icons.add,color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
