import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile Screen'),
          centerTitle: true,
          leading: Text(''),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Icon(Icons.notifications),
            )
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/image/girl.jpeg'),
                  ),
                  title: Text('Hi, Jerry',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('Welcome to CoinBowl')),
              SizedBox(height: 20),
              ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Invite People'),
                  trailing: Icon(Icons.arrow_forward_ios)),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 22, 0),
                child: Row(children: [
                  Icon(Icons.check),
                  SizedBox(width: 15),
                  Text('Account'),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios)
                ]),
              )
            ],
          ),
        ));
  }
}
