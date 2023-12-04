import 'package:flutter/material.dart';
import 'package:forms/modules/check_box/views/check_box_view.dart';
import 'package:forms/modules/date_picker/views/date_picker_view.dart';
import 'package:forms/modules/date_picker2/views/date_picker2_view.dart';
import 'package:forms/modules/element_picker/views/element_picker_view.dart';
import 'package:forms/modules/radio_button/views/radio_button_view.dart';
import 'package:forms/modules/slider/views/slider_view.dart';
import 'package:forms/modules/text_input/views/text_input_view.dart';
import 'package:forms/regist_form/views/regist_form_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    theme: ThemeData(useMaterial3: true),
    home: SliderView(),
  ));
}
