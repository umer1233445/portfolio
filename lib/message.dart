import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:umer12/call_screen.dart';

class MessageScreen extends StatefulWidget {
   MessageScreen({super.key,
    required this.Imge11,
    required this.name11

  });

  final String Imge11;
  final String name11;


  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [

              Container(
                color: Colors.black87,
                width: double.infinity,
                height: 69,
              ),

              Positioned(
                top: 12,
                child: IconButton(onPressed: () {
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
              ),

              Positioned(
                left: 22,
                top: 10,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(widget.Imge11),
                    backgroundColor: Colors.amber,
                    radius: 23,
                  ),
                ),
              ),


              Positioned(
                top: 15,
                  left: 85,
                  child: Text(widget.name11, style: TextStyle(color: Colors.white,fontSize: 23),)),




           Positioned(
             left: 290,
              top: 10,
                child: IconButton(
                    icon: Icon(Icons.add_ic_call_outlined,color: Colors.white,size: 30,),
                  onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CallScreen(name11: widget.name11, Imge11: widget.Imge11),));

                 },),
        ),
    

              Positioned(
                left: 330,
                top: 10,
                child: IconButton(onPressed: () {

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                  Text("This is Dummy Whatsapp you cannot use this feature",style: TextStyle(color: Colors.white),),
                    duration: Duration(milliseconds: 600),
                  ));

                }, icon: Icon(Icons.more_vert,color: Colors.white,size: 32,)),
              ),

            ],
          ),

          Container(
            margin:EdgeInsets.only(left: 270,top: 10) ,
            height: 30,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.green.shade900,
                borderRadius: BorderRadius.circular(10),
              ),

              child:  Padding(
                padding: EdgeInsets.only(left: 10,top: 3),
                child: Text("Hi",style: TextStyle(color: Colors.white,fontSize: 18),),
              )),

          Container(
              margin:EdgeInsets.only(left: 10,top: 10) ,
              height: 30,
              width: 140,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(10),
              ),

              child:  Padding(
                padding: EdgeInsets.only(left: 10,top: 3),
                child: Text("How are you",style: TextStyle(color: Colors.white,fontSize: 18),),
              )),

          Container(
              margin:EdgeInsets.only(left: 170,top: 10) ,
              height: 30,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.green.shade900,
                borderRadius: BorderRadius.circular(10),
              ),

              child:  Padding(
                padding: EdgeInsets.only(left: 10,top: 3),
                child: Text("I'm fine And You",style: TextStyle(color: Colors.white,fontSize: 18),),
              )),


          Spacer(),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            height: 48,
            width: 500,
            decoration: BoxDecoration(
                color: Colors.grey.shade700,
                borderRadius: BorderRadius.circular(25)
            ),
            child: TextFormField(
              decoration: InputDecoration(

                suffixIcon: IconButton(onPressed: () {

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                  Text("This is Dummy Whatsapp you cannot use this feature",style: TextStyle(color: Colors.white),),
                    duration: Duration(milliseconds: 600),
                  ));


                }, icon: Icon(Icons.send,color: Colors.green.shade900,size: 30,)),

                  hintText: "Search",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.none,
                        color: Colors.black
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.none,
                        color: Colors.black87,
                      ),
                      borderRadius: BorderRadius.circular(25)
                  ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
