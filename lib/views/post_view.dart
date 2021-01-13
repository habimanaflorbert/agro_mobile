import 'package:agro/controllers/postController.dart';
import 'package:agro/views/singup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agro/views/singup.dart';
import 'package:agro/views/dashboard.dart';

class PostView extends StatelessWidget {
  const PostView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final postController = Get.put(PostController());

    return Scaffold(
      appBar: AppBar(
        title: Text("welcome to Post "),
        backgroundColor: Colors.green[300],
      ),
      body: Wrap(
        children: [
          Center(
            child: Text(
              "Post Content",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.green),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1.0),
                child: TextFormField(
                  // on change
                  onChanged: (text) {
                    postController.titleChange(newTitle: text);
                  },

                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Description must be provided';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Title",
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.blue),
                borderRadius: BorderRadius.circular(3.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1.0),
                child: TextFormField(
                  // on change
                  onChanged: (text) {
                    postController.postedChange(newPosted: text);
                  },

                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Description must be provided';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Posted BY ",
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.green),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1.0),
                child: TextFormField(
                  // on change
                  onChanged: (text) {
                    postController.descChange(newDesc: text);
                  },

                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Description must be provided';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Description",
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),

          // the post
          Center(
            child: FlatButton(
              padding: const EdgeInsets.all(10),
              color: Colors.green[500],
              onPressed: () {
              
              postController.createPost();

              },
              child: Text(
                "Create Post",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
