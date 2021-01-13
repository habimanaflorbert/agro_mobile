import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter_mobile_carousel/carousel.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(10000, (i) => "Item $i");

    return SingleChildScrollView(
      child: Wrap(
      
        
        children: <Widget>[

Padding(
  padding: const EdgeInsets.only(right:4.0,bottom: 30.0,left: 4.0,top:5.0),
  child:   Container(
   
    child: Row(
     
      children: [
      Expanded(child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("Dashboard",style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color:Colors.grey[700])),
        Padding(
          padding: const EdgeInsets.only(left:14.0),
          child: Text("welcome Jambo Florbert",style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.grey[700]) ),
        )
        
        ],
      )),
       Expanded(
              child: Align(
                                    alignment: Alignment.topRight,
                                    child: CircleAvatar(
                                      backgroundImage:AssetImage('assets/IMG_1645.JPG'),
      radius: 40.0,
                                    )
                                  ),
       ),
    ],),
  ),
),


     const Divider(
            color:Colors.grey,
            height: 1,
            thickness: 3,
            indent: 20,
            endIndent: 20,
          ),


            Padding(
           padding: const EdgeInsets.only(left:10.0,top: 10.0),
           child: Text(
              'Top Readed',
              style: TextStyle(fontSize: 25,),
            ),
         ),


          SizedBox(
            height: 200.0,

            child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0),
              child: Wrap(children: <Widget>[
                Container(
                  height: 192,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    image: DecorationImage(
                        image: AssetImage("assets/IMG_1645.JPG"),
                        fit: BoxFit.cover),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.black.withOpacity(0.5),
                      height: 15,
                      width: 250,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 2.0,
                            ),
                            child: Expanded(
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text("Item  $index",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text("500 RWF",
                                  style: TextStyle(
                                      color: Colors.red[300],
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),


              
            ),
          ),
            ),

















          ),







    Padding(
           padding: const EdgeInsets.only(left:10.0 ,top:40.0),
           child: Text(
              'New Books',
              style: TextStyle(fontSize: 25),
            ),
         ),


          SizedBox(
            height: 200.0,

            child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0),
              child: Wrap(children: <Widget>[
                Container(
                  height: 192,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    image: DecorationImage(
                        image: AssetImage("assets/IMG_1645.JPG"),
                        fit: BoxFit.cover),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.black.withOpacity(0.5),
                      height: 15,
                      width: 150,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 2.0,
                            ),
                            child: Expanded(
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text("Item  $index",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text("500 RWF",
                                  style: TextStyle(
                                      color: Colors.red[300],
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),


              
            ),
          ),
            ),

















          ),

















    Padding(
           padding: const EdgeInsets.only(left:10.0 ,top:40.0,bottom: 20.0),
           child: Text(
              'Mostly Bought',
              style: TextStyle(fontSize: 25),
            ),
         ),


          SizedBox(
            height: 200.0,

            child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0),
              child: Wrap(children: <Widget>[
                Container(
                  height: 192,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    image: DecorationImage(
                        image: AssetImage("assets/IMG_1645.JPG"),
                        fit: BoxFit.cover),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.black.withOpacity(0.5),
                      height: 15,
                      width: 150,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 2.0,
                            ),
                            child: Expanded(
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text("Item  $index",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text("500 RWF",
                                  style: TextStyle(
                                      color: Colors.red[300],
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),


              
            ),
          ),
            ),

















          ),


SizedBox(height: 20,)






















         
        ],

        
      ),
      
    );
  }
}
