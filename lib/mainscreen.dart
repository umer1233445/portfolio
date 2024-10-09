import 'package:flutter/material.dart';
import 'package:umer12/bottom.dart';
import 'package:umer12/resuable.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
        
                Container(
                  height: 110,
                  width: double.infinity,
                  color: Colors.black,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ImagePortfolio(),));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/portfolio.jpeg'),
                      radius: 40,
                    ),
                  ),
                ),
        
                Positioned(
                  left: 100,
                  top: 25,
                  child: Container(
        
                      child: Text("UMER IQBAL",style: TextStyle(color: Colors.white,fontSize: 29,fontWeight: FontWeight.w500,),)),
                ),
        
                Positioned(
                  left: 102,
                    top: 60,
                    child: Text("FlUTTER DEVELOPER",style: TextStyle(color: Colors.white,fontSize: 16),))
        
              ],
            ),
        
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
        
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("PROFESSIONAL SUMMARY :",style: TextStyle(color: Colors.white,fontSize: 18),)),
        
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Text("*  To obtain a Flutter Developer internship position where I can apply my knowledege"
                        "and skills in mobile app development while gaming practical experience in a professional environmemt."
                        "Thank you for reviewing my portfolio.",
                      style: TextStyle(color: Colors.white,fontSize: 15),)),
        
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                    child: Text("Warm regards,",style: TextStyle(color: Colors.white),)),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Umer Iqbal",style: TextStyle(color: Colors.white, fontSize: 15),)),


              ],
            ),
        
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 120,
                  width: double.infinity,
                  color: Colors.black,
                ),

                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Text("CONTACT",style: TextStyle(color: Colors.white,fontSize: 20),)),

                Positioned(
                  left: 170,
                  top: 10,
                  child: Container(
                      child: Text("WORK EXPERIENCE",style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),


                Positioned(
                  left: 170,
                  top: 40,
                  child: Text("* Now I am a Fresh candidates. \n  I am Looking for a Internship",
                  style: TextStyle(color: Colors.white),),
                ),

                Positioned(
                    top: 44,
                    left: 5,
                    child: Icon(Icons.call,color: Colors.white,size: 16,)),

                Positioned(
                  top: 41,
                    left: 26,
                    child: Text("03702434540",style: TextStyle(color: Colors.white),)),

                Positioned(
                    top: 72,
                    left: 5,
                    child: Icon(Icons.mail,color: Colors.white,size: 16,)),

                Positioned(
                    top: 69,
                    left: 26,
                    child: Text("ui232233@gmail.com",style: TextStyle(color: Colors.white),)),

                Positioned(
                    top: 100,
                    left: 5,
                    child: Icon(Icons.home,color: Colors.white,size: 16,)),

                Positioned(
                    top: 97,
                    left: 26,
                    child: Text("R-222 Gulshan-e-Jamal Karachi ",style: TextStyle(color: Colors.white),))

              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Text("EDUCATION",style: TextStyle(color: Colors.white,fontSize: 20),)),

                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("Aptech :",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),

                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        child: Text("Augest 2021-Present", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),

                  ],
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Text("I completed a 2-year diploma in software development from Aptech after"
                      "finishing my 12th class.", style: TextStyle(color: Colors.white),),
                ),

                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Text("FSC GOVT DEGREE COLLEGE FOR BOYS & GIRLS",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),

              Row(
                children: [

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    child: Text("Completed Intermediate In Pre-Engineering", style: TextStyle(color: Colors.white),),
                  ),

                  SizedBox(
                    width: 1,
                  ),

                  Container(
                    child: Text("2021-2023", style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
                  ),

                ],
              ),

              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                    child: Text("Check Out My Portfolio ----------->",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),


                SizedBox(
                  width: 50,
                ),

                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.green),
                      shape: WidgetStatePropertyAll(BeveledRectangleBorder()),
                    ),
                    onPressed: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context) => Bottom_Screen(),));

                }, child: Center(child: Text("NEXT",style: TextStyle(color: Colors.white),)))


              ],
            ),
        
          ],
        ),
      ),

    );
  }
}
