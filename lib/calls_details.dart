import 'package:flutter/material.dart';
import 'package:umer12/call_screen.dart';

import 'image.dart';

class CallsDetails extends StatefulWidget {
  const CallsDetails({super.key});

  @override
  State<CallsDetails> createState() => _CallsDetailsState();
}

class _CallsDetailsState extends State<CallsDetails> {

  List Imges = [
    'images/dpimage1.jpg',
    'images/dpimage2.jpg',
    'images/dpimages3.jpg',
    'images/dpimages4.jpg',
    'images/dpimages5.jpg',
    'images/dpimages6.jpg',
    'images/dpimages7.jpg',
    'images/dpimages8.jpg',
    'images/dpimages9.jpg',
    'images/dpimages10.jpg'
  ];
  List names = ["Sir Basit Ali","Usama Bhai","Hanzala Bhai","Waqas Qari","Kashif Bhai","Junaid Bhai",
    "Atif Lahori","Ali Gujjar","Hassan Khan","Affan Aptech"];
  List times = ["Today 8:19 PM","Yesterday 7:20 AM","Today 9:35 PM","Yesterday 4:45 PM",
    "Yesterday 2:00 AM","Today 1:00 PM","Today 5:49 PM","Yesterday 6:00 PM",
    "Today 10:10 PM","Yesterday 3:25 AM"];



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
                  child: Text("Calls",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w500),)),
        
              SizedBox(
                width: 166,
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
        
                }, icon: Icon(Icons.search,color: Colors.white,size: 26,)),
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
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Favorites",style: TextStyle(color: Colors.white,fontSize: 20),)),
              ],
            ),
        
            Stack(
              children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 60,
                width: double.infinity,
                color: Colors.black,
              ),
                
                Positioned(
                  left: 10,
                  top: 8,
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                ),
        
                Positioned(
                  left: 12,
                  top: 12,
                  child: IconButton(onPressed: () {

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                    Text("This is Dummy Whatsapp you cannot use this feature",style: TextStyle(color: Colors.white),),

                    duration: Duration(milliseconds: 600),
                    ));


                  }, icon: Icon(Icons.favorite,color: Colors.black,)),
                ),
        
                Positioned(
                  left: 70,
                    top: 18,
                    child: Text("Add favorite",style: TextStyle(color: Colors.white,fontSize: 18),)),
                
            ],),
        
            Column(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 11),
                    child: Text("Recent",style: TextStyle(color: Colors.white,fontSize: 18),)),
              ],
            ),
        
        
        
            ListView.builder(
              itemCount: names.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  height: 70,
                  width: double.infinity,
                  child:  Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                  ImageScreen(Img: Imges[index], Name: names[index]),));
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.amber,
                              backgroundImage: AssetImage(Imges[index]),
                              radius: 30,
                            ),
                          ),
                        ),
        
                        Container(
                          child: Positioned(
                              left: 75,
                              top: 8,
                              child: Text(names[index],style: TextStyle(color: Colors.white,fontSize: 17),)),
                        ),
        
                        Positioned(
                            left: 76,
                            top: 36,
                            child: Icon(Icons.arrow_upward,color: Colors.green,size: 15,)),
        
                        Positioned(
                            left: 92,
                            top: 33,
                            child: Text(times[index],style: TextStyle(color: Colors.white,fontSize: 14),)),
        
                        Positioned(
                            left: 320,
                            top: 9,
                            child: IconButton(onPressed: () {

                              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                  CallScreen(name11: names[index], Imge11: Imges[index]),));

                            }, icon: Icon(Icons.call,color: Colors.white,)))
        
                      ],
                    ),
                  
                );
        
              },)
        
        
        
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
        Text("This is Dummy Whatsapp You Cannot Use This feature",style: TextStyle(fontSize: 17),),
          duration: Duration(milliseconds: 800),));

      },child: Center(child: Icon(Icons.add_ic_call,color: Colors.black,),),backgroundColor: Colors.green,),


    );
  }
}
