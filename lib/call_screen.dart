import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key,
    required this.name11,
    required this.Imge11,


  });

  final String Imge11;
  final String name11;



  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,

      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 80,
                width: double.infinity,
              ),


              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(50)
                ),
                child:IconButton(onPressed: () {

                  Navigator.pop(context);

                }, icon: Icon(Icons.arrow_back_sharp,color: Colors.white,)),
              ),

              Positioned(
                left: 135,
                top: 20,
                child: Container(

                    child: Text(widget.name11,style: TextStyle(color: Colors.white,fontSize: 20),)),
              ),

              Positioned(
                left: 156,
                top: 44,
                child: Container(

                    child: Text("Calling ...",style: TextStyle(color: Colors.white,fontSize: 15),)),
              ),


              Positioned(
                left: 310,
                top: 12,
                child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: IconButton(onPressed: () {

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                    Text("This is Dummy Whatsapp you cannot use this feature",style: TextStyle(color: Colors.white),),
                      duration: Duration(milliseconds: 600),
                    ));


                  }, icon: Icon(Icons.person_2_sharp,color: Colors.white,)),
                ),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.only(
              top: 120
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(widget.Imge11),
              radius: 88,
            ),
          ),

          Spacer(),

          Stack(
            children: [
              Container(
                height: 70,
                width: 300,
                margin: EdgeInsets.symmetric(horizontal: 35,vertical: 20),

                decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(8)
                ),
              ),

              Positioned(
                left: 42,
                top: 32,
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: IconButton(onPressed: () {

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                    Text("This is Dummy Whatsapp you cannot use this feature",style: TextStyle(color: Colors.white),),
                      duration: Duration(milliseconds: 600),
                    ));

                  }, icon: Icon(Icons.more_horiz,color: Colors.white,)),
                ),
              ),

              Positioned(
                left: 102,
                top: 32,
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: IconButton(onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                    Text("This is Dummy Whatsapp you cannot use this feature",style: TextStyle(color: Colors.white),),
                      duration: Duration(milliseconds: 600),
                    ));


                  }, icon: Icon(Icons.video_camera_back_rounded,color: Colors.grey.shade500,)),
                ),
              ),

              Positioned(
                left: 159,
                top: 32,
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: IconButton(onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                    Text("This is Dummy Whatsapp you cannot use this feature",style: TextStyle(color: Colors.white),),
                      duration: Duration(milliseconds: 600),
                    ));


                  }, icon: Icon(Icons.volume_up_sharp,color: Colors.white,)),
                ),
              ),

              Positioned(
                left: 215,
                top: 32,
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: IconButton(onPressed: () {

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                    Text("This is Dummy Whatsapp you cannot use this feature",style: TextStyle(color: Colors.white),),
                      duration: Duration(milliseconds: 600),
                    ));


                  }, icon: Icon(Icons.mic_off,color: Colors.white,)),
                ),
              ),

              Positioned(
                left: 277,
                top: 32,
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      color: Colors.red.shade500,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: IconButton(onPressed: () {

                    Navigator.pop(context);

                  }, icon: Icon(Icons.call_end,color: Colors.white,)),
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }
}
