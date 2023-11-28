import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forms/regist_form/models/user.dart';
import 'package:forms/regist_form/views/detalist_view.dart';
import 'package:get/get.dart';

class RegistFormViewController extends GetxController {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();

  DateTime birthDate = DateTime.now();

  bool male = false;

  List carBands = [
    "Lada",
    "Suzuki",
    "Volkswagen",
    "Dacia",
    "Mercedes",
    "Ford",
    "Honda",
    "Nissan",
    "Ferrari",
    "Porsche",
    "Zsolti",
    "Toyota"
  ];

  get elements => [
        Text(carBands[0], style: TextStyle(fontSize: 30)),
        Text(carBands[1], style: TextStyle(fontSize: 30)),
        Text(carBands[2], style: TextStyle(fontSize: 30)),
        Text(carBands[3], style: TextStyle(fontSize: 30)),
        Text(carBands[4], style: TextStyle(fontSize: 30)),
        Text(carBands[5], style: TextStyle(fontSize: 30)),
        Text(carBands[6], style: TextStyle(fontSize: 30)),
        Text(carBands[7], style: TextStyle(fontSize: 30)),
        Text(carBands[8], style: TextStyle(fontSize: 30)),
        Text(carBands[9], style: TextStyle(fontSize: 30)),
        Text(carBands[10], style: TextStyle(fontSize: 30)),
        Text(carBands[11], style: TextStyle(fontSize: 30)),
      ];

  void showDatePicker() {
    Get.bottomSheet(
      Container(
        color: Colors.white,
        height: 250,
        child: CupertinoDatePicker(
          initialDateTime: DateTime.now(),
          mode: CupertinoDatePickerMode.date,
          dateOrder: DatePickerDateOrder.ymd,
          use24hFormat: true,
          onDateTimeChanged: (date) {
            birthDate = date;
            update();
          },
        ),
      ),
    );
  }

  String SelectedCarBand = "";
  void setSelectedCarBand(int index) {
    SelectedCarBand = carBands[index];
  }

  List favoriteColors = [];

  void sendDataToTheNextView() {
    User user = User(
      firstname: firstname.text,
      lastname: lastname.text,
      date: birthDate,
      male: male,
      favoriteColors: favoriteColors.map((e) => e.toString()).toList(),
      favoriteCarBrand: SelectedCarBand,
    );
    Get.to(DetalistView(
      user: user,
    ));
  }


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
