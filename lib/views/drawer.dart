import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DrawerView extends StatelessWidget {
  const DrawerView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
            child:Scaffold(
                          body: Wrap(children: [
                Container(
                child: Padding(
                  padding: const EdgeInsets.only(top:40.0),
                  child: Center(child: 
                   Column(children: [

 Text("Jambo Florbert" ,style:  TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
SizedBox(height:20),



                     CircleAvatar(
                                          backgroundImage:AssetImage('assets/IMG_1645.JPG'),
      radius: 50.0,
                                        ),


                   ],)
                  ,),
                ),

                  height: 280.0,
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

Container( child:
Center(child:
Column(children: [
  SizedBox(height:20,),
  TextButton.icon(onPressed: null, 
  icon: Icon(Icons.home),
  label:Text( "MY Dashboard"),  
  ),

   const Divider(
              color:Colors.grey,
              height: 1,
              thickness: 1,
              indent: 0,
              endIndent: 0,
          ),

  TextButton.icon(onPressed: null, 
  icon: Icon(Icons.settings),
  label:Text( "Edit Account"),  
  ),

   const Divider(
              color:Colors.grey,
              height: 1,
              thickness: 1,
              indent: 0,
              endIndent: 0,
          ),


  TextButton.icon(onPressed: null, 
  icon: Icon(Icons.logout),
  label:Text( "Log out"),  
  ),

   const Divider(
              color:Colors.grey,
              height: 1,
              thickness: 1,
              indent: 0,
              endIndent: 0,
          ),







],)
 ,)
,)






              ],),



    bottomNavigationBar: new Container(
    height: 40.0,
    color:Colors.green[300],
    child: Center(child: Text("@copyright Jambo Florbert",style: TextStyle(color: Colors.white),),),
  ), 
            ),

            
            
            );

  }
}