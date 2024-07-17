import 'package:flutter/material.dart';
import 'package:flutter_first_project/homescreen.dart';
import 'package:flutter_first_project/components/textfield.dart';
import 'package:flutter_first_project/components/button.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'loginscreen',
    routes: {
      'loginscreen': (context) => Loginscreen(),
      'home': (context) => Homescreen()
    },
  ));
}

class Loginscreen extends StatelessWidget {
  Loginscreen({super.key});
//contollers
  final userNamecontroller = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                //profle
                Stack(
                  children: <Widget>[
                    const CircleAvatar(
                        radius: 55, backgroundImage: AssetImage('pot.png')),
                    Positioned(
                        bottom: -0,
                        right: -0,
                        child: InkWell(
                          onHover: (value) {},
                          onTap: () {},
                          child: Container(
                            height: 36,
                            width: 36,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.grey),
                            child: const Icon(Icons.camera_alt),
                          ),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                //hello welcome back
                Opacity(
                  opacity: 0.8,
                  child: Text(
                    'Welcome back, user!',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700]),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                //username
                Textfieldd(
                  hintText: ' username or email',
                  obscureText: false,
                  controller: userNamecontroller,
                ),
                const SizedBox(
                  height: 20,
                ),
                Textfieldd(
                  controller: passwordController,
                  hintText: 'input your password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 14,
                ),
                //forgot pasword
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'forgot password?',
                          style: TextStyle(color: Colors.red, fontSize: 13),
                        ),
                        onHover: (value) {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                //sign in
                const Button(),
                const SizedBox(
                  height: 35,
                ),
                //apple or google
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Text(
                        'or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                //apple and googlr logo
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //google
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[100]),
                      child: Image.asset(
                        'google.png',
                        height: 40,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Image.asset(
                        'apple.png',
                        height: 40,
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 30,
                )
                //not a member, register now
              ],
            ),
          ),
        ),
      ),
    );
  }
}
