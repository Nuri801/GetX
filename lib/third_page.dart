import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_state/my_home_page.dart';
import 'controllers/tap_controller.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // TapController controller = Get.find();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              // controller.increaseX();
              Get.to(()=> MyHomePage());
            },
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0)
              ),
              child: Center(child: Text("X value: " + Get.find<TapController>().x.toString(), style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ),)),
            ),
          ),
          GestureDetector(
            onTap: () {
              // controller.increaseX();
              Get.to(()=> MyHomePage());
            },
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0)
              ),
              child: Center(child: Text("X value: " + Get.find<TapController>().x.toString(), style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ),)),
            ),
          )
        ],
      ),
    );
  }
}
