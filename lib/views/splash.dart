import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[600],
      body: 
      SingleChildScrollView(
          child:
      
      Container( 
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 300.0, 0, 0),
            child: Center(
              child: Text('AGRO',style: 
            TextStyle(color: Colors.white,letterSpacing: 10.0,fontSize: 40.0)
              ,),
            ),
          ),


              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 300, 20, 0.0),
                child: Stack(children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Center(
                          child: Text(
                        "@Copyright florbert 2020",
                        style: TextStyle(
                          letterSpacing: 1.0,
                          color: Colors.grey[400],
                        ),
                      )))
                ])),
        ],),
      ),
    ));
  }
}
