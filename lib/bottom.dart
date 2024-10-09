import 'package:flutter/material.dart';
import 'package:umer12/calls_details.dart';
import 'package:umer12/communitiy.dart';
import 'package:umer12/home.dart';
import 'package:umer12/status.dart';

class Bottom_Screen extends StatefulWidget {
  const Bottom_Screen({super.key});

  @override
  State<Bottom_Screen> createState() => _Bottom_ScreenState();
}

class _Bottom_ScreenState extends State<Bottom_Screen> {

  int currentIndex = 0;

  void pageShifter(index){
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> myScreen =[
    HomePage(),
    StatusScreen(),
    CommunitiyScreen(),
    CallsDetails()

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,

      body: myScreen[currentIndex],
      // bottomNavigationBar:  Theme(
      //   data: Theme.of(context).copyWith(
      //     canvasColor: Colors.black,
      //     primaryColor: Colors.white,
      //     textTheme: Theme.of(context).textTheme.copyWith(
      //
      //     )
      //   ),
      //
      //   child: BottomNavigationBar(
      //       selectedItemColor: Colors.blue,
      //         currentIndex: currentIndex,
      //         unselectedItemColor: Colors.red,
      //         showUnselectedLabels: true,
      //         backgroundColor: Colors.black,
      //         onTap: pageShifter,
      //         items: [
      //           BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chats"),
      //           BottomNavigationBarItem(icon: Icon(Icons.update_sharp),label: "Updates"),
      //           BottomNavigationBarItem(icon: Icon(Icons.person_3_sharp),label: "Communities"),
      //           BottomNavigationBarItem(icon: Icon(Icons.call),label: "Calls"),
      //     ]),
      // ),
      //

      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the BottomNavigationBar
            canvasColor: Colors.black,
          ),
        // sets the inactive color of the BottomNavigationBar
        child: new BottomNavigationBar(
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: pageShifter,
          items: [

             new BottomNavigationBarItem(
                 icon:  _buildIconWithBackground(Icons.chat,0),
                 label: "Chats"),
             new BottomNavigationBarItem(
                 icon: _buildIconWithBackground(Icons.update_sharp,1),
                 label: "Updates"),
             new BottomNavigationBarItem(
                 icon: _buildIconWithBackground(Icons.person_3_sharp,2),
                 label: "Communities"),
             new BottomNavigationBarItem(
                 icon: _buildIconWithBackground(Icons.call,3),
                 label: "Calls"),
          ],
        ),
      ),

    );
  }


  Widget _buildIconWithBackground(IconData iconData, int index) {
    bool isSelected = currentIndex == index;
    return Container(
      height: 30,
      width: 60,
      decoration: BoxDecoration(
        color: isSelected ? Colors.green.shade600 : Colors.transparent, // selected item ka background color
        borderRadius: BorderRadius.circular(60), // rounded background
      ),
      padding: EdgeInsets.all(4), // spacing around the icon
      child: Icon(
        iconData,
        color: isSelected ? Colors.white : Colors.white, // selected icon ka color
      ),
    );
  }
}
