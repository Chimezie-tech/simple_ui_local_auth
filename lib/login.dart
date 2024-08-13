import 'package:flutter/material.dart';
import 'package:my_app/register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                    decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                      print("I was tapped");
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
          )),
    );
  }
}
