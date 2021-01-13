import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter_mobile_carousel/carousel.dart';

// import 'package:agro/views/allcategot.dart';
import 'package:agro/views/allcategor.dart';
import 'package:agro/views/category.dart';
import 'package:agro/views/notes.dart';
import 'package:agro/views/drawer.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

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
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "All Category",
                ),
                Tab(
                  text: "Category 1",
                ),
                Tab(
                  text: "Category 2",
                ),
              ],
            ),
          ),
          drawer:DrawerView(), 
          


          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Get.to(MyNotes());
            },
            icon: Icon(Icons.card_travel),
            label: Text(
              'My Notes',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.green[500],
          ),
          body: TabBarView(
            children: [
              AllCategories(),
              CategoriesViews(),
              Icon(Icons.directions_bike),
            ],
          ),
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
    final suggestionList = query.isEmpty
        ? recentcrops
        : crops.where((p) => p.startsWith(query)).toList();

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
      itemCount: suggestionList.length,
    );
  }
}
