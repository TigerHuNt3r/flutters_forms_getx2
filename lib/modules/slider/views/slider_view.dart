import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forms/modules/slider/controllers/slider_view_controller.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class SliderView extends StatelessWidget {
  SliderViewController controller = Get.put(SliderViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SliderViewController>(
      init: controller,
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("slider view"),
          ),
          body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    controller.value.toString(),
                    style:  TextStyle(fontSize: 50),
                  ),
                  CupertinoSlider(
            min: 1,
            max: 10,
            value: controller.value.toDouble(),
            onChanged: (value) {
                  controller.setValue(value.toInt());
            },
          ),
                ],
              )),
        );
      }
    );
  }
}
