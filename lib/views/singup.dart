import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:agro/controllers/singupController.dart';

class Singup extends StatelessWidget {
  const Singup({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final singupController = Get.put(SinupController());

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        elevation: 0.0,
        title: Text(
          "Create Account",
          style: TextStyle(color: Colors.white),
        ),
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
            Text(singupController.msg.toString()),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              child: TextFormField(


                onChanged: (text) {
                  singupController.fnameChange(newname: text);
                },

// onChanged: (text){

// //  singupController.fnameChange(newname: text);
// },


                validator: (value) {
                  if (value.isEmpty) {
                    return 'Description must be provided';
                  }
                  return null;
                },

                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: InputBorder.none,
                    labelText: 'Enter your Firstname'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
              child: TextFormField(
                onChanged: (text) {
                  singupController.lnameChange(newname: text);
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Description must be provided';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: InputBorder.none,
                    labelText: 'Enter your Lastname'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
              child: TextFormField(
                onChanged: (text) {
                  singupController.emailChange(newname: text);
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Description must be provided';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: InputBorder.none,
                    labelText: 'Enter your Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: CountryCodePicker(
                      onChanged: print,
                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                      initialSelection: 'RW',
                      favorite: ['+250', 'RW'],

                      showFlagDialog: true,
                      comparator: (a, b) => b.name.compareTo(a.name),
                      //Get the country information relevant to the initial selection
                      onInit: (code) =>
                          singupController.codeChange(newname: code.dialCode),

                      // print(
                      //     "on init ${code.name} ${code.dialCode} ${code.name}"),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: singupController.nmController,
                      onChanged: (text) {
                        singupController.phoneChange(newname: text);
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Description must be provided';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: InputBorder.none,
                          labelText: 'Enter your Number'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 20.0),
              child: TextFormField(
                onChanged: (text) {
                  singupController.passChange(newname: text);
                },





                validator: (value) {
                  if (value.isEmpty) {
                    return 'Description must be provided';
                  }
                  return null;
                },

                obscureText: true, //to hide inputed

                decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: InputBorder.none, //to hide brder
                    filled: true,
                    labelText: 'Enter your new  Password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 0.0),
              child: TextFormField(
                onChanged: (text) {
                  singupController.repassChange(newname: text);
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Description must be provided';
                  }
                  return null;
                },

                obscureText: true, //to hide inputed
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: InputBorder.none, //to hide brder
                    filled: true,
                    labelText: 'Enter your re-type Password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 20.0),
              child: RaisedButton(
                padding: const EdgeInsets.all(10),
                textColor: Colors.white,
                color: Colors.green[300],

                onPressed: () => singupController.createPost(),
                
                child: Text(
                  'Create Account',
                  style: TextStyle(
                      letterSpacing: 3.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ),
            ),
          ]))),
    );
  }
}
