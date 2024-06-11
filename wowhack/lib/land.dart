import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class land extends StatefulWidget {
  const land({super.key});

  @override
  State<land> createState() => _landState();
}

class _landState extends State<land> {
  @override
  Widget build(BuildContext context) {
    int selected_index=2;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/background.png"),fit: BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: Colors.transparent,
        bottomNavigationBar: GNav(
          //backgroundColor: Colors.grey.shade50,
          color: Colors.grey.shade700,
          activeColor: Colors.white,
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
    );
  }
}
