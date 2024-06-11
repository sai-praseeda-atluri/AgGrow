import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:wowhack/crop.dart';

class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  int selected_index=0;
  void cropshift(){
    setState(() {
      Navigator.pushNamed(context, "crop");
    });
  }
  void landshift(){
    setState(() {
      Navigator.pushNamed(context, "landinfo");
    });
  }
  @override 
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("images/background.png"),fit: BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          title: Text("AgGrow",style: TextStyle(
            fontFamily: "DMSerifText",
            fontSize: 50,
          ),),
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
              ),
              margin: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/AG-GROW.png"),
                radius: 10,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(8),
          color: Colors.transparent,
          child: GNav(
            //backgroundColor: Colors.grey.shade50,
            color: Colors.grey.shade700,
            activeColor: Colors.white  ,
            tabBackgroundColor: Colors.grey.shade700,
            gap: 8,
            selectedIndex: selected_index,
            onTabChange: (int index) {
              switch (index) {
                case 0:
                  selected_index=index;
                  Navigator.pushNamed(context, "firstpage");
                  break;
                case 1:
                  selected_index=index;
                  Navigator.pushNamed(context, "crop");
                  break;
                case 2:
                  selected_index=index;
                  Navigator.pushNamed(context, "landinfo");
                  break;
                case 3:
                  selected_index=index;
                  Navigator.pushNamed(context, "settings");
                  break;
              }
            },
            tabs: [
              GButton(icon:  Icons.home,
              text: "Home",
              ),
              GButton(icon:  Icons.forest,
              text: "Crops",
              ),
              GButton(icon:  Icons.landscape,
              text: "Lands",),
              GButton(icon: Icons.settings,
              text: "Settings",)
            ],
          ),
        ),
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Text("From seeds to success, Where technology meets soil, Cultivating purity within roots of the soul!",style: TextStyle(
                      fontFamily:"Pacifico",
                      fontSize: 40,
                      color: Colors.brown,
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
