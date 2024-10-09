import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CommunitiyScreen extends StatefulWidget {
  const CommunitiyScreen({super.key});

  @override
  State<CommunitiyScreen> createState() => _CommunitiyScreenState();
}

class _CommunitiyScreenState extends State<CommunitiyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
          height: 60,
          width: double.infinity,
          color: Colors.black87,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Text("Communities",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w400),)),
        
              SizedBox(
                width: 112,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: IconButton(onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                  Text("This is Dummy Whatsapp you cannot use this feature",style: TextStyle(color: Colors.white),),
                    duration: Duration(milliseconds: 600),
                  ));
        
        
                }, icon: Icon(Icons.camera_alt_outlined,color: Colors.white,size: 26,)),
              ),
        
        
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: IconButton(onPressed: () {
        
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                  Text("This is Dummy Whatsapp you cannot use this feature",style: TextStyle(color: Colors.white),),
                    duration: Duration(milliseconds: 600),
                  ));
        
        
                }, icon: Icon(Icons.more_vert,color: Colors.white,size: 26,)),
                ),
               ],
             ),
           ),
        
            Column(
              children: [
        
                Container(
                  margin: EdgeInsets.only(left: 18,top: 45),
                  height: 150,
                  width: 178,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.vertical(top: Radius.circular(10),bottom:Radius.circular(10) ),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/image1.png')),
                  ),
                ),
        
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 50,top: 10),
                        child: Text("Stay connected with a community",style: TextStyle(color: Colors.white,fontSize: 18),)),
        
        
                    Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("Communities bring members together in topic-based",style: TextStyle(color: Colors.white),)),
        
                    Center(
                        child: Text("groups,and make it easy to get admin",style: TextStyle(color: Colors.white),)),
        
                    Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("announcements. Any community you're added to will",style: TextStyle(color: Colors.white),)),
        
        
                    Center(
                        child: Text("appear here.",style: TextStyle(color: Colors.white),)),
        
                    Center(
                        child: Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text("See example communities >",style: TextStyle(color: Colors.green),))),
        
        
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      height: 40,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(Colors.green),
                          ),
                          onPressed: () {
        
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                            Text("This is Dummy Whatsapp you cannot use this feature",style: TextStyle(color: Colors.white),)));
        
                      }, child: Center(
        
                          child: Text("Start your community",style: TextStyle(color: Colors.black),))),
                    ),
        
                  ],
                ),
        
              ],
            ),
        
        
        ]
            ),
      ),

    );
  }
}
