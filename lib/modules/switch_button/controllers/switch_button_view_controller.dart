import 'package:get/get.dart';

class SwitchButtonViewController extends GetxController{
  bool value = false;

 void setValue(bool value) {
  this.value = value;
  update();
 }
}