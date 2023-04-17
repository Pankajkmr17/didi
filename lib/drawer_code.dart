import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_drawer/ProfilePage.dart';
// import 'package:flutter_drawer/SettingPage.dart';

class drawer_code extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFF2DCBD0)),
            child: Column(
              children: <Widget>[
                Flexible(
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://th.bing.com/th/id/OIP.4unhoWGR2oCtN6xKJHYDoQHaHa?w=152&h=180&c=7&r=0&o=5&pid=1.7'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                Text(
                  "Aadi Foundation",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Text(
                  "aadi.found@gmail.com ",
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white70),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_outline),
            title: Text("Profile"),
            onTap: () {
              Navigator.pop(context);
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => Profile())         // add profile page here
              //      );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings_applications),
            title: Text("Setting"),
            onTap: () {
              Navigator.pop(context);
              // Navigator.push(
              //     , MaterialPageRoute(builder: (context) => Setting())       // setting here
              // );
              print("Go to Settings");
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text("Logout"),
            onTap: () {
              print("Logout Users");
              Navigator.pop(context);
              SystemNavigator.pop();
            },
          ),
        ],
      ),
    );
  }
}