import 'package:dummy/components/auth.dart';
import 'package:dummy/components/button.dart';
import 'package:dummy/components/square_tille.dart';
import 'package:dummy/components/text_field.dart';
import 'package:dummy/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isloading = false;

  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  void handleSignIn(BuildContext context) async {
    setState(() {
      isloading = true;
    });

    String email = usernameController.text;
    String password = passwordController.text;

    // User? user = await AuthService.signIn(email, password);

    setState(() {
      isloading = false;
    });

    int lengthEmail = email.length;
    int lengthPassword = password.length;

    // if (lengthEmail != 0 && lengthPassword != 0) {
    //   // if (email && password != null) {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => PageHome()),
    //   );
    // } else {
    //   print('Sign In failed');
    // }
    if (lengthEmail == 0 && lengthPassword == 0) {
      print('Sign In failed');
      setState(() {
        isloading = true;
      });
      return;
    }

    if (email == "admin@mail.com" && password == "12345") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PageHome()),
      );
    } else {
      print("Email atau Password salah !");
      setState(() {
        isloading = true;
      });
    }
  }

  //sign in user
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 111, 96, 249),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              //logo
              Image.asset(
                'lib/images/key.png',
                width: 150,
              ),

              const SizedBox(height: 10),

              //welcome back,  you've been missed!
              Text(
                'Welcome back!',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: const Color.fromARGB(255, 225, 220, 200),
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 25),

              //username, textfield
              //external file
              MyTextfield(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              //password textfield
              MyTextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 225, 220, 200),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //sign in button
              MyButton(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  );
                  handleSignIn(context);
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 50),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(
                            color: Color.fromARGB(255, 225, 220, 200)),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              //google + microsoft sign ini button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  //google btn
                  SquareTile(imagePath: 'lib/images/google.png'),

                  SizedBox(width: 10),

                  //microsoft btn
                  SquareTile(imagePath: 'lib/images/microsoft.png'),
                ],
              ),

              const SizedBox(height: 10),

              //not a member register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not A member?',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
