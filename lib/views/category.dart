import 'package:flutter/material.dart';

class CategoriesViews extends StatelessWidget {
  const CategoriesViews({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // mainAxisSpacing: 5.0,
      crossAxisSpacing: 1.0,
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(10, (index) {
        return Expanded(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0),
              child: Wrap(children: <Widget>[
                Container(
                  height: 172,
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
                      height: 18,
                      width: MediaQuery.of(context).size.width,
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
        );
      }),
    );
  }
}
