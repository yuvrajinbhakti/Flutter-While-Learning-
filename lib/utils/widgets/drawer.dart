import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://media.licdn.com/dms/image/C4E03AQFlBmMYjiirhw/profile-displayphoto-shrink_800_800/0/1634611904661?e=1683763200&v=beta&t=8lsiZmg0YSgbjj5h3WzlqfmNHOVxK5GWiuMKc1CuoLk";
    return Drawer(
      child: Container(
        color:Colors.deepPurple,
        child: ListView(
          padding:EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Yuvraj Singh Nain"),
                  accountEmail: Text("yuvrajsinghnain03@gmail.com"),
                  // currentAccountPicture: Image.network(imageUrl),
                  currentAccountPicture:
                      CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
                ),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.home,color:Colors.white
                  ),
title:Text("Home",textScaleFactor: 1.2,style:TextStyle(color:Colors.white)),
                ),
                  ListTile(
                  leading: Icon(CupertinoIcons.profile_circled,color:Colors.white
                  ),
title:Text("Profile",textScaleFactor: 1.2,style:TextStyle(color:Colors.white)),
                ),
                  ListTile(
                  leading: Icon(CupertinoIcons.mail,color:Colors.white
                  ),
title:Text("Email me",textScaleFactor: 1.2,style:TextStyle(color:Colors.white)),
                ),
          ],
        ),
      ),
    );
  }
}
