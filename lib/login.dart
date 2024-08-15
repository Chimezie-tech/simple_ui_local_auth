import 'package:flutter/material.dart';
import 'package:my_app/navbar.dart';
import 'package:my_app/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final getname = TextEditingController();
  final getpassword = TextEditingController();

  Future<bool> loginUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? storedusername = prefs.getString('username');
    String? storedpassword = prefs.getString('password');

    return getname.text == storedusername && getpassword.text == storedpassword;
  }

  void login() {
    loginUser().then((isLoggedIn) {
      if (isLoggedIn) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NavBar()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Invalid Username or Password'),
            duration: Duration(seconds: 5),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            // leading: GestureDetector(
            //   onTap: () {
            //     print('This user is not going anywhere');
            //   },
            //   child: Icon(
            //     Icons.arrow,
            //     color: Colors.white,
            //   ),
            // ),
            backgroundColor: Colors.blue,
            elevation: 1,
            centerTitle: true,
            title: const Text(
              'Login',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Center(
              child: Column(
                children: [
                  TextField(
                    controller: getname,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    controller: getpassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),
                  GestureDetector(
                    onTap: () {
                      login();
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
                          'Login',
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
          )),
    );
  }
}
