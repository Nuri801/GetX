import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_state/third_page.dart';
import 'controllers/tap_controller.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Get.to(() => ThirdPage());
            },
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0)
              ),
              child: Center(child: Text('Go to Third Page', style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ),)),
            ),
          ),
        ],
      ),
    );
  }
}

