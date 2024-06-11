import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:wowhack/crops/barley.dart';
import 'package:wowhack/crops/cotton.dart';
import 'package:wowhack/crops/cucumber.dart';
import 'package:wowhack/crops/maize.dart';
import 'package:wowhack/crops/muskmelon.dart';
import 'package:wowhack/crops/mustard.dart';
import 'package:wowhack/crops/rice.dart';
import 'package:wowhack/crops/watermelon.dart';
import 'package:wowhack/crops/wheat.dart';

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  List<String> Seasons = ['Summer', 'Monsoon', 'Winter'];
  List<String> summer = ['Cucumber', 'Muskmelon', 'Watermelon'];
  List<String> monsoon = ['Rice', 'Cotton', 'Maize'];
  List<String> winter = ['Wheat', 'Barley', 'Mustard'];
  List<String> crops = [];

  String? _selecteditem;
  String? seasonalitem;
  String? forseason;
  String? forcrop = '';
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    int selected_index=1;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/background.png"),fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
        ),
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
        body: SafeArea(
          child: Form(
            child: Row(
              children: [
                SizedBox(width: size*0.16,),
                Column(
                  children: [
                    SizedBox(height: 170,),
                    Container(
                      height: 50,
                      child: Center(
                        child: Text("Crops",style: TextStyle(
                          fontFamily: "DMSerifText",
                          fontSize: 40
                        ),),
                      ),
                    ),
                    SizedBox(height: 80,),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.black,
                              width: 1.0
                          )
                      ),
                      child: DropdownButtonFormField(
                        borderRadius: BorderRadius.circular(10),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 15),
                            filled: true
                        ),
                        value: _selecteditem,
                        hint: Text("Select Season",style: TextStyle(
                            fontFamily: "jose",
                            fontSize: 20,
                            fontWeight: FontWeight.w900
                        ),),
                        items: Seasons.map((String items) {
                          return DropdownMenuItem<String>(
                              value: items, child: Text(items));
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            seasonalitem = null;
                            _selecteditem = value;
                            forseason = value;
                          });
                        },
                      ),
                    ),//This is the seasons field
                    SizedBox(height: 50,),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1.0
                          )
                      ),
                      child: SizedBox(
                        height: 50,
                        width: 300,
                        child: DropdownButtonFormField(
                          borderRadius: BorderRadius.circular(10),
                          decoration: InputDecoration(
                              filled: true,
                              contentPadding: EdgeInsets.only(left: 15)
                          ),
                          value: seasonalitem,
                          hint: Text("Select Crop",style: TextStyle(
                              fontFamily: "jose",
                              fontSize: 20,
                              fontWeight: FontWeight.w900
                          ),),
                          items: forseason == null ?null:forseason == "Summer"
                              ? summer.map((String items) {
                            return DropdownMenuItem<String>(
                                value: items, child: Text(items));
                          }).toList()
                              : forseason == "Winter"
                              ? winter.map((String items) {
                            return DropdownMenuItem<String>(
                                value: items, child: Text(items));
                          }).toList()
                              : monsoon.map((String items) {
                            return DropdownMenuItem<String>(
                                value: items, child: Text(items));
                          }).toList(),
                          onChanged: (value) async {
                            setState(() {
                              seasonalitem = value;
                            });

                            if (value == 'Wheat') {
                              final result = await Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => WheatPage()),
                              );
                              if (result == 'reset') {
                                setState(() {
                                  _selecteditem = null;
                                  seasonalitem = null;
                                  forseason = null;
                                });
                              }
                            }
                            if (value == 'Barley') {
                              final result = await Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => BarleyPage()),
                              );
                              if (result == 'reset') {
                                setState(() {
                                  _selecteditem = null;
                                  seasonalitem = null;
                                  forseason = null;
                                });
                              }
                            }
                            if (value == 'Cotton') {
                              final result = await Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => CottonPage()),
                              );
                              if (result == 'reset') {
                                setState(() {
                                  _selecteditem = null;
                                  seasonalitem = null;
                                  forseason = null;
                                });
                              }
                            }
                            if (value == 'Cucumber') {
                              final result = await Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => CucumberPage()),
                              );
                              if (result == 'reset') {
                                setState(() {
                                  _selecteditem = null;
                                  seasonalitem = null;
                                  forseason = null;
                                });
                              }
                            }
                            if (value == 'Maize') {
                              final result = await Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MaizePage()),
                              );
                              if (result == 'reset') {
                                setState(() {
                                  _selecteditem = null;
                                  seasonalitem = null;
                                  forseason = null;
                                });
                              }
                            }
                            if (value == 'Muskmelon') {
                              final result = await Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MuskmelonPage()),
                              );
                              if (result == 'reset') {
                                setState(() {
                                  _selecteditem = null;
                                  seasonalitem = null;
                                  forseason = null;
                                });
                              }
                            }
                            if (value == 'Mustard') {
                              final result = await Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MustardPage()),
                              );
                              if (result == 'reset') {
                                setState(() {
                                  _selecteditem = null;
                                  seasonalitem = null;
                                  forseason = null;
                                });
                              }
                            }
                            if (value == 'Rice') {
                              final result = await Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => RicePage()),
                              );
                              if (result == 'reset') {
                                setState(() {
                                  _selecteditem = null;
                                  seasonalitem = null;
                                  forseason = null;
                                });
                              }
                            }
                            if (value == 'Watermelon') {
                              final result = await Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => WatermelonPage()),
                              );
                              if (result == 'reset') {
                                setState(() {
                                  _selecteditem = null;
                                  seasonalitem = null;
                                  forseason = null;
                                });
                              }
                            }


                          },
                        ),
                      ),
                    ),//This is the crops field
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
