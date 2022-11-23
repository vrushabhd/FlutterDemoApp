import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TextFieldController  extends GetxController {
String  userEnteredInput = "status";

// late TextEditingController textEditingController;


  void onTextChanged(String text){



    userEnteredInput = text;
   update();
  }






@override
  void onInit() {

  //textEditingController = TextEditingController();



//
  }
}