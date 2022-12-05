import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_x_state/controllers/list_controller.dart';
import '../controllers/tap_controller.dart';

Future<void> init() async{
  Get.put(TapController());
  Get.put(ListController());
}