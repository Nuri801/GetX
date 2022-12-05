import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_state/my_home_page.dart';
import 'controllers/list_controller.dart';
import 'controllers/tap_controller.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // TapController controller = Get.find();
    //Our second, list, controller dependency injection here:
    ListController listController = Get.put(ListController());

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<TapController>(
            builder: (_) {
              return Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0),
                ),
                child: Center(
                  child: Text(
                    "X + Y value: " + Get.find<TapController>().z.toString(),
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              );
            },
          ),
          Obx(
            () => Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF89dad0),
              ),
              child: Center(
                child: Text(
                  "Y value: " + Get.find<TapController>().y.value.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // controller.increaseX();
              Get.to(() => MyHomePage());
            },
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0)),
              child: Center(
                  child: Text(
                "X value: " + Get.find<TapController>().x.toString(),
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.find<TapController>().increaseY();
              // controller.increaseY();
              // Get.to(()=> MyHomePage());
            },
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0)),
              child: Center(
                  child: Text(
                "Increase Y",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.find<TapController>().totalXY();
              // controller.increaseY();
              // Get.to(()=> MyHomePage());
            },
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0)),
              child: Center(
                  child: Text(
                "Total Y+X",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          ),
          GestureDetector(
            onTap: () {

              listController.setValues(Get.find<TapController>().z);
              // controller.increaseY();
              // Get.to(()=> MyHomePage());

            },
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0)),
              child: Center(
                  child: Text(
                    "Save total",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
