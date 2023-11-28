import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forms/regist_form/models/user.dart';

class DetalistView extends StatelessWidget {
  DetalistView({required this.user});
  User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detalist View")),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Text("Firstname: ", style: TextStyle(fontSize: 30)),
          Text(user.firstname, style: TextStyle(fontSize: 50)),
          Divider(),
          Text("Lasttname: ", style: TextStyle(fontSize: 30)),
          Text(user.lastname, style: TextStyle(fontSize: 50)),
          Divider(),
          Text("Date: ", style: TextStyle(fontSize: 30)),
          Text(user.date.toString(), style: TextStyle(fontSize: 50)),
          Divider(),
          Text("Neme: ", style: TextStyle(fontSize: 30)),
          Text((user.male) ? "férfi" : "nő", style: TextStyle(fontSize: 50)),
          Divider(),
          Text("Kedvenc autómárka: ", style: TextStyle(fontSize: 30)),
          Text(user.favoriteCarBrand, style: TextStyle(fontSize: 50)),
          Divider(),
          Text("Kedvenc szined: ", style: TextStyle(fontSize: 30)),
          Text(user.favoriteColors.toString(), style: TextStyle(fontSize: 50)),
          ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: user.favoriteColors.length,
          itemBuilder: (_, i){
            return Text(user.favoriteColors[i]);
          })

          
        ],
      )),
    );
  }
}
