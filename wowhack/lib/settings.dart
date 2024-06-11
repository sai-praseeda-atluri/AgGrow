import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:wowhack/land.dart';

class settings extends StatefulWidget {
  settings({super.key});
  String? selected_item;

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  List<String> lang =["English","తెలుగు","हिन्दी","தமிழ்"];
  String? selected_item;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    int selected_index=3;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/background.png"),fit: BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Settings",style: TextStyle(
              fontFamily: "DMSerifText",
              fontSize: 40
          ),),
          leading: Icon(Icons.settings,size: 30,),
          actions: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(Icons.account_circle,size: 30,),
            ),
          ],
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
        body: Form(
          child: Center(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row (
                      children: [
                        Container(
                          width: size/2.2,
                          height: 50,
                          child: Center(child: Text("Language",style: TextStyle(
                              fontFamily: "jose",
                              fontSize: 25,
                            fontWeight: FontWeight.w900
                          ),)),
                        ),
                        Container(
                          width: size/2.2,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1
                            )
                          ),
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(filled: true,contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                            value: selected_item,

                            borderRadius: BorderRadius.circular(10),
                            hint: Text("Select Language",style: TextStyle(
                                fontFamily: "jose",
                                fontSize: 20,
                                fontWeight: FontWeight.w900
                            ),),
                              items: lang.map((String items) {return DropdownMenuItem<String>(value: items,child: Text(items));}).toList(),
                              onChanged: (value){
                                setState(() {
                                  selected_item = value;
                                });
                              },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(75.0),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.sunny),
                            ),
                        SizedBox(
                          width: 100,
                        ),
                        Text("Dark/Light Mode",style: TextStyle(
                          fontFamily: "jose",
                          fontSize: 20,
                          fontWeight: FontWeight.w900
                        ),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
