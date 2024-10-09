import 'package:flutter/material.dart';
import 'package:umer12/image.dart';
import 'package:umer12/message.dart';
import 'package:umer12/resuable.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
  List messags = ["Assalamualikum Sir","Hi","How're you",".","Bye","Ok","Thk ha","Sae","Set Hai","Nice"];
  List times = ["8:19 PM","7:20 AM","9:35 PM","4:45 PM","2:00 AM","1:00 PM","5:49 PM","6:00 PM",
    "10:10 PM","3:25 AM"];


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
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: IconButton(onPressed: () {

                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_sharp,color: Colors.white,size: 26,)),
                  ),

                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Text("WhatsApp",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),)),

                  SizedBox(
                    width: 100,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

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
                      )
                    ),
                  ),
                ),

               ListView.builder(
                 itemCount: names.length,
                 scrollDirection: Axis.vertical,
                 shrinkWrap: true,
                 itemBuilder: (context, index) {
                 return Container(
                   height: 70,
                   width: double.infinity,
                   child: GestureDetector(
                     onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => MessageScreen(Imge11: Imges[index], name11: names[index]),));
                     },
                     child: Stack(
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
                             left: 70,
                             top: 34,
                             child: Icon(Icons.check,color: Colors.white,size: 18,)),

                         Positioned(
                             left: 92,
                             top: 33,
                             child: Text(messags[index],style: TextStyle(color: Colors.white,fontSize: 14),)),

                         Positioned(
                             left: 305,
                             top: 9,
                             child: Text(times[index],style: TextStyle(color: Colors.white),))

                       ],
                     ),
                   ),
                 );

               },)

              ],
            ),


          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
        Text("This is Dummy Whatsapp You Cannot Add",style: TextStyle(fontSize: 17),),
          duration: Duration(milliseconds: 800),));

      },child: Center(child: Icon(Icons.add_box_rounded,color: Colors.black,),),backgroundColor: Colors.green,),


    );
  }
}
