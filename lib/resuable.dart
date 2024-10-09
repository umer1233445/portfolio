import 'package:flutter/material.dart';

class ImagePortfolio extends StatefulWidget {
  const ImagePortfolio({super.key});

  @override
  State<ImagePortfolio> createState() => _ImagePortfolioState();
}

class _ImagePortfolioState extends State<ImagePortfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
         Row(
           children: [

             Container(
               margin: EdgeInsets.symmetric(vertical: 10),
               child: IconButton(onPressed: () {

                 Navigator.pop(context);
               }, icon: Icon(Icons.arrow_back_sharp,color: Colors.white,size: 26,)),
             ),


             Container(
                 margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                 child: Text("UMER IQBAL",style: TextStyle(color: Colors.white,fontSize: 25, fontWeight: FontWeight.bold),)),


           ],
         ),


          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 70),
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/portfolio.jpeg')),
              ),

            ),
          ),

          
        ],
      ),
    );
  }
}
