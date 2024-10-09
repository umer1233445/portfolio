import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Column(
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
                child: Text("Updates",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w500),)),

            SizedBox(
              width: 130,
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
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Text("Status",style: TextStyle(color: Colors.white,fontSize: 25),)),
            ],
          ),

          Stack(
            children: [
              Container(
                height: 70,
                width: double.infinity,
                color: Colors.black,
              ),

              Positioned(
                left: 8,
                top: 2,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/images2.jpg'),
                  radius: 30,
                ),
              ),

              Positioned(
                left: 44,
                top: 38,
                child: Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black,width: 1.5,style: BorderStyle.solid),
                  ),
                 
                ),
              ),
              Positioned(
                left: 37,
                top: 32,

                child: IconButton(onPressed: () {

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                  Text("This is Dummy Whatsapp you cannot use this feature",style: TextStyle(color: Colors.white),)));


                }, icon: Icon(Icons.add,color: Colors.black,size: 18,)),
              ),

              Positioned(

                left: 80,
                  top:  8,
                  child: Text("My status",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),)),

              Positioned(

                  left: 80,
                  top:  36,
                  child: Text("Tap to add status update",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w500),))
            ],
          ),

         ]
       ),

      floatingActionButton: FloatingActionButton(onPressed: () {

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
        Text("This is Dummy Whatsapp You Cannot Use Camera",style: TextStyle(fontSize: 16),),
            duration: Duration(milliseconds: 600),));

      },child: Center(child: Icon(Icons.camera_alt,color: Colors.black,),),backgroundColor: Colors.green,),


    );
  }
}
