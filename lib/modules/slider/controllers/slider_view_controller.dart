import 'package:get/get.dart';

class SliderViewController extends GetxController{
  int value= 5;

  void setValue(int value){
    this.value = value;
    update();
  }
}