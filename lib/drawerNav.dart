import 'package:flutter/material.dart';
import 'package:my_app/login.dart';

class DrawerNaV extends StatelessWidget {
  const DrawerNaV({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Will Smith'),
            accountEmail: Text('smith@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                  child: Image.asset(
                'assets/image/girl.jpeg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              )),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.blue,
            ),
            title: Text(
              'Favorites',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.notifications,
              color: Colors.blue,
            ),
            title: Text(
              'Notifications',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  '10',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              color: Colors.blue,
            ),
            title: Text(
              'Share',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.file_present,
              color: Colors.blue,
            ),
            title: Text(
              'Policies',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            leading: Icon(
              Icons.logout,
              color: Colors.blue,
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
