import 'package:agro/views/singup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agro/views/login.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 0.0),
          child: Wrap(
            children: [
              Center(
                child: Text(
                  "Welcome to Agro ",
                  style: TextStyle(
                    color: Colors.green[700],
                    fontSize: 28.0,
                  ),
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 400.0,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(builder: (BuildContext context) {
                    return Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                              elevation: 0.0,
                              child: InkWell(
                                  onTap: () {
                                    print("you click $i");
                                  },
                                  child: Column(
                                    // direction: Axis.vertical,
                                    children: [
                                      Image.asset("assets/IMG_1645.JPG"),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        'Service ',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text("He has born in 19999999"),
                                    ],
                                  ))),
                        )
                      ],
                    );
                  });
                }).toList(),
              ),
              Center(
                child: FlatButton(
                  padding: const EdgeInsets.all(10),
                  color: Colors.green[400],
                  onPressed: () {
                    Get.to(LoginView());
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    child: Text(
                      "Get Start",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
