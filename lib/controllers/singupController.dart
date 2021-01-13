import 'dart:convert';
import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

import 'dart:async';

class SinupController extends GetxController {
  var firstname = "".obs;

  var lastname = "".obs;
  var email = "".obs;
  var password = "".obs;
  var repass = "".obs;
  var phone = "".obs;
  var code = "".obs;
  var msg = "".obs;

  var nmController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    fnameChange();
    lnameChange();
    emailChange();
    passChange();
    repassChange();
    phoneChange();
  }

  void fnameChange({String newname}) {
    firstname.value = newname;
    print(firstname);
  }

  void lnameChange({String newname}) {
    lastname.value = newname;
    print(lastname);
  }

  void emailChange({String newname}) {
    email.value = newname;
    print(email);
  }

  void passChange({String newname}) {
    password.value = newname;
    print(password);
  }

  void repassChange({String newname}) {
    repass.value = newname;
    print(repass);
  }

  void phoneChange({String newname}) {
    phone.value = newname;
    print(phone);
  }

  void codeChange({String newname}) {
    code.value = newname;
    print(code);
  }

  // sending to database
  Future createPost() async {
    print(nmController.text);

    if (password == repass) {
      var data = jsonEncode({
        "firstname": firstname.toString(),
        "lastname": lastname.toString(),
        "email": email.toString(),
        "password": password.toString(),
        "phonenumber": code.toString() + phone.toString()
      });

      var res = await http.post('https://agro-florbert.herokuapp.com/Post/',
      
          body: data,
          headers: <String, String>{
            'Content-Type': 'application/json ; charset=UTF-8'
          }
          );


      var sentdata = jsonDecode(res.body);
      print(sentdata);
      
      
      
      
      
      
      
      
      // firstname.value = "";
      // lastname.value = "";
      // email.value = "";
      // password.value = "";
      // repass.value = "";
      // phone.value = "";
      // code.value = "";
      msg.value = "succesful";
    } else {
      msg.value = "password Not Match";
    }
  }
}
