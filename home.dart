import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tester/controller.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter'),
          centerTitle: true,
        ),
        body: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${controller.counter.value}',
                style: const TextStyle(fontSize: 30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: (() {
                      controller.minus();
                    }),
                    child: const Icon(Icons.remove),
                  ),
                  ElevatedButton(
                    onPressed: (() {
                      controller.add();
                    }),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
