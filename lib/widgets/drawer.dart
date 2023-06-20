import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        'https://pbs.twimg.com/profile_images/1656388891014832128/KzbMje0n_400x400.jpg';
    return Drawer(
      child: Container(
        color: Colors.red,
        child: ListView(
          // padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    decoration: BoxDecoration(color: Colors.red),
                    accountName: Text('Vimal Vinayraj'),
                    accountEmail: Text('vimalvinayraj"gmail.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                    ))),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
              ),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
              ),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
              ),
              title: Text('Email'),
            )
          ],
        ),
      ),
    );
  }
}
