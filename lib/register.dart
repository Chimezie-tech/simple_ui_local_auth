import 'package:flutter/material.dart';
import 'package:my_app/login.dart';
import 'package:my_app/navbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final getuseremail = TextEditingController();

  final getusername = TextEditingController();

  final getuserpassword = TextEditingController();

  Future<void> registerUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', getuseremail.text);
    await prefs.setString('username', getusername.text);
    await prefs.setString('password', getuserpassword.text);
  }

  void _savedetails() {
    registerUser().then((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Registration Succesful!'),
          duration: Duration(seconds: 5),
        ),
      );
      Future.delayed(Duration(seconds: 4), () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.green, width: 3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  color: Colors.deepOrange,
                  Icons.arrow_back_ios,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.blue,
          elevation: 1,
          centerTitle: true,
          title: const Text(
            'Register',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Logout'),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: Center(
            child: Column(
              children: [
                TextField(
                  controller: getusername,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: getuseremail,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: getuserpassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    _savedetails();
                  },
                  child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.blue,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'SignUp',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                // Container(
                //   width: 350,
                //   height: 40,
                //   child: ElevatedButton(
                //     onPressed: () {
                //       print('Login clicked');
                //     },
                //     child: const Text('Login'),
                //   ),
                // )
              ],
            ),
          ),
        ));
  }
}
