import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key,
    required this.Img,
    required this.Name

  });

  final String Name;
  final String Img;



  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

         Row(
           children: [
             IconButton(onPressed: () {

               Navigator.pop(context);

             }, icon: Icon(Icons.arrow_back, color: Colors.white,)),
             SizedBox(
               width: 5,
             ),

             Container(
                 margin:EdgeInsets.symmetric(horizontal: 10,vertical: 10) ,
                 child: Text(widget.Name, style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
           ],
         ),

          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 100),
              height: 270,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.Img)),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
