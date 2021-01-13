import 'package:agro/views/singup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agro/views/singup.dart';
import 'package:agro/views/dashboard.dart';
import 'package:agro/views/post_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        elevation: 0.0,
        title: Text("Login",style: TextStyle(color: Colors.white),),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
          child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
            Container(
              child: Center(
                child: Text(
                  'AGRO',
                  style: TextStyle(
                      fontSize: 20.0, color: Colors.white, letterSpacing: 2.0),
                ),
              ),
              height: 120.0,
              decoration: new BoxDecoration(
                color: Colors.green[300],
                boxShadow: [
                  new BoxShadow(blurRadius: 0.0),
                ],
                borderRadius: new BorderRadius.vertical(
                    bottom: new Radius.elliptical(
                        MediaQuery.of(context).size.width, 80.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 80.0, 20.0, 20.0),
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: InputBorder.none,
                    labelText: 'Enter your username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 0.0),
              child: TextFormField(
                obscureText: true, //to hide inputed
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: InputBorder.none, //to hide brder
                    filled: true,
                    labelText: 'Enter your Password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 0.0),
              child: RaisedButton(
                padding: const EdgeInsets.all(10),
                textColor: Colors.white,
                color: Colors.green[300],
                onPressed: (){  Get.to(Dashboard());},
                child: Text(
                  'Login',
                  style: TextStyle(
                      letterSpacing: 3.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 0.0),
              child: FlatButton.icon(
                padding: const EdgeInsets.all(10),
                color: Colors.transparent,
                onPressed: () {
                  Get.to(Singup());
                },
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[700],
                ),
                label: Text(
                  "Create Account",
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[700]),
                ),
              ),
            ),
        








        // the post
        Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 0.0),
              child: FlatButton.icon(
                padding: const EdgeInsets.all(10),
                color: Colors.transparent,
                onPressed: () {
                  Get.to(PostView());
                },
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[700],
                ),
                label: Text(
                  "Create Post",
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[700]),
                ),
              ),
            ),
          ]))),
    );
  }
}
