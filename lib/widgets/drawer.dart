import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://neilpatel.com/wp-content/uploads/2017/09/image-editing-tools.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Devil"),
                  accountEmail: Text("devil@linux.in"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl)
                    
                    ),
                ),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.profile_circled,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.phone,
                    color: Colors.white,
                  ),
                  title: Text(
                    "phone number",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.camera_circle,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Camera",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
