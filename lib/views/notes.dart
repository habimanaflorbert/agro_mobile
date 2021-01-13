import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter_mobile_carousel/carousel.dart';

// import 'package:agro/views/allcategot.dart';
import 'package:agro/views/allcategor.dart';
import 'package:agro/views/category.dart';
import 'package:agro/views/item.dart';

class MyNotes extends StatelessWidget {
  const MyNotes({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[300],
            elevation: 0.0,
            title: Text("Agro"),
            centerTitle: true,
            actions: [
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    showSearch(context: context, delegate: DataSearch());
                  })
            ],
            // toolbarHeight: 35.0,
            
          ),
          drawer: Drawer(
            child: Text("hello"),
          ),
         
          body: SingleChildScrollView(
          child: Container(
            child:
            Padding(
              padding: const EdgeInsets.only(left:2.0,right: 2.0),
              child: Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:20),
                    child: Center( child: Text("My Notes" ,style: TextStyle(fontSize:28,),),),
                  ),


                  Card(
                
                  
                 child: Row(
                   
                   children: [

                   Padding(
                     padding: const EdgeInsets.only(bottom:8.0 ,top: 10.0),
                     child: CircleAvatar(
                                        backgroundImage:AssetImage('assets/IMG_1645.JPG'),
                            radius: 40.0,
                                      ),




                   ),

 
Expanded(
  child:   Align(
     alignment: Alignment.center,
    child:   Center(
      child: Column(
         
          children: [
         ListTile(
           onTap: (){Get.to(ItemView());},
           title: Text("Ibishimbo" ), 
       
        subtitle:Text("if color is null, a debugging tool still knows the value is a and can display relevant color related UI",style: TextStyle( fontSize:12,color:Colors.grey[600] ),)
         ),
          ],
        ),
    ),
  ),
),





                 ],),
                  ),


                ],
               ),
            )
          ),
          )



        ));
  }
}

class DataSearch extends SearchDelegate<String> {
  final crops = ["Kiryumukwe", "Ibijumba", "Ibishimbo", "Ibirayi Kinigi"];
  final recentcrops = ["Ibijumba", "Kiryumukwe"];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = " ";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        child: Card(
          color: Colors.red,
          child: Center(child: Text(query)),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty ? recentcrops : crops.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.timer_10),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(color: Colors.grey))
              ]),
        ),
      ),

      itemCount:suggestionList.length,
    );
  }
}
