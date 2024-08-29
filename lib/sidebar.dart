import 'package:flutter/material.dart';
import 'package:my_app/drawerNav.dart';
import 'package:my_app/showmodal.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  void openModal() {
    showModalBottomSheet(
        // isScrollControlled: true,
        context: context,
        builder: (ctx) => const ShowmyModal());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNaV(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Side Bar'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            openModal();
          },
          child: Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.green,
                width: 2,
              ),
            ),
            child: Center(
              child: Text(
                'Open modal',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
