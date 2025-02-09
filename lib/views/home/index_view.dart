

import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}


void LoginPage() {
    print('bang bang bang');
  }

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          IndexPage(),
        ]),
      ),
    );
  }
}

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 17,
                top: 402,
                child: SizedBox(
                  width: 191,
                  height: 34,
                  child: Text(
                    'Existing User?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Lexend Deca',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: OutlinedButton(
                  onPressed: LoginPage, 
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 38, vertical: 449),
                    ),
                  
                  child: 
                    Container(
                    child: Text("Login"),
                    width: 315,
                    height: 37,
                    decoration: ShapeDecoration(
                      color: Color(0xFF039900),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 70,
                top: 454,
                child: SizedBox(
                  width: 252,
                  height: 24,
                  child: Text(
                    'Log In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Kdam Thmor',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -3,
                top: 504,
                child: SizedBox(
                  width: 191,
                  height: 34,
                  child: Text(
                    'New User?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Lexend Deca',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 36,
                top: 551,
                child: Container(
                  width: 315,
                  height: 37,
                  decoration: ShapeDecoration(
                    color: Color(0xFF039900),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 68,
                top: 556,
                child: SizedBox(
                  width: 252,
                  height: 24,
                  child: Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Kdam Thmor',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 81,
                top: 110,
                child: Container(
                  width: 214,
                  height: 214,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Image.asset("SoVest.png"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
