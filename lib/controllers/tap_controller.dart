import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0;

  int get x => _x;

  RxInt _y = 0.obs;

  RxInt get y => _y;

  int _z=0;
  int get z=>_z;

  void totalXY(){
    _z = x+_y.value;
    update();
    print(_z);
  }

  void increaseX() {
    _x++;
    update();
  }

  void decreaseX() {
    _x--;
    update();
  }

  void increaseY() {
    _y.value++;
  }

  void decreaseY() {
    _y.value--;
  }
}