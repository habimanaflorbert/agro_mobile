import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

import 'dart:async';

class PostController extends GetxController {
  var title = ''.obs;
  var postedby = ''.obs;
  var desc = ''.obs;

  @override
  void onInit() {
    super.onInit();
    titleChange();
    postedChange();
    descChange();
  }

  void titleChange({String newTitle}) {
    title.value = newTitle;
    print(title);
  }

  void postedChange({String newPosted}) {
    postedby.value = newPosted;
    print(postedby);
  }

  void descChange({String newDesc}) {
    desc.value = newDesc;
    print(newDesc);
  }

  // sending to database
  Future createPost() async {
    var data =jsonEncode({
      "title": title.toString(),
      "posted_by": postedby.toString(),
      "desc": desc.toString()
    });

    var res = await http.post('https://agro-florbert.herokuapp.com/Post/',
        body: data,
        headers: <String, String>{
          'Content-Type': 'application/json ; charset=UTF-8'
        });

    var sentdata = jsonDecode(res.body);
    print(sentdata);
  }
}
