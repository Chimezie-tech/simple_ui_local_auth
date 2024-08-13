import 'package:flutter/material.dart';

class NotifyMe extends StatefulWidget {
  const NotifyMe({super.key});

  @override
  State<NotifyMe> createState() => _NotifyMeState();
}

class _NotifyMeState extends State<NotifyMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NotifyMe Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Welcome to the Notification sceen'),
      )
    );
  }
}