import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Syaiful Hadi"),
            currentAccountPicture: CircleAvatar(
              backgroundImage:AssetImage("assets/img/ipoey.png")
            ),
            accountEmail: Text("ipoey.design@gmail.com"),
            ),
          DrawerListTile(
            iconData: Icons.group,
            title: "NewGroup",
            onTilePressed: (){},
          ),
           DrawerListTile(
            iconData: Icons.lock,
            title: "New Secret Group",
            onTilePressed: (){},
          ),
           DrawerListTile(
            iconData: Icons.notifications,
            title: "New Channel Chat",
            onTilePressed: (){},
          ),
           DrawerListTile(
            iconData: Icons.contacts,
            title: "Contacts",
            onTilePressed: (){},
          ),
           DrawerListTile(
            iconData: Icons.bookmark_border,
            title: "Save Messages",
            onTilePressed: (){},
          ),
           DrawerListTile(
            iconData: Icons.phone,
            title: "Calls",
            onTilePressed: (){},
          )
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData? iconData;
  final String? title;
  final VoidCallback? onTilePressed;

  const DrawerListTile({Key? key, this.iconData, this.title, this.onTilePressed})
  :super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(title!, style: TextStyle(fontSize: 16),),
    );
  }
}