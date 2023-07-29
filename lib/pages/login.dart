import 'package:flutter/material.dart';
import 'package:gamify/pages/signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gamify/theme/color.dart';
import 'package:gamify/theme/polygonElement.dart';
import 'dart:math';
import 'package:gamify/pages/subject.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            CustomPaint(
              painter: Polygon(sides: 6,off_x: 0.67,off_y: -0.017,radius_factor: 6.8,rotation: 0.015*pi,color: c1),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ),
            CustomPaint(
              painter: Polygon(sides: 6,off_x: 0.923,off_y: 0.046,radius_factor: 5.6,rotation: 0,color: c2),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ),
            CustomPaint(
              painter: Polygon(sides: 6,off_x: 0.91,off_y: 0.19,radius_factor: 6.2,rotation: 0,color: c3),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 120,),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                      'Login',
                      style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                          )
                      )
                  ),
                ),
                const SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Color(0xFF9c9c9c))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Username',
                            hintStyle: GoogleFonts.dmSans(
                                textStyle: TextStyle(fontSize: 18,color: Color(0xFF9c9c9c))
                            )
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 14,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Color(0xFF9c9c9c))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: GoogleFonts.dmSans(
                                textStyle: TextStyle(fontSize: 18,color: Color(0xFF9c9c9c))
                            )
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 14,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password ?',
                      style: GoogleFonts.dmSans(
                          textStyle: TextStyle(fontSize: 16,color: c2)
                      ),
                    ),
                    SizedBox(width: 25,)
                  ],
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Subject()));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      width: 315,
                      height: 40,
                      child: Center(
                        child: Text(
                          'Login',
                          style: GoogleFonts.dmSans(
                              textStyle: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w600 )
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 45,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 25,right: 15),
                        child: Divider(
                          color: Color(0xFFaeaeae),
                          height: 30,
                        ),
                      ),
                    ),
                    Text(
                      'OR',
                      style: GoogleFonts.dmSans(
                          textStyle: TextStyle(fontSize: 18,color: Color(0xFFaeaeae))
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 15,right: 25),
                        child: Divider(
                          color: Color(0xFFaeaeae),
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                GestureDetector(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xFF9c9c9c))
                        ),
                        child: Row(
                            children: [
                              SizedBox(width: 35,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('images/google-logo.png'),
                              ),
                              SizedBox(width: 7,),
                              Text(
                                'Continue with Google',
                                style: GoogleFonts.dmSans(
                                    textStyle: TextStyle(fontSize: 18,color: Color(0xFF9c9c9c))
                                ),
                              )
                            ]
                        )
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                GestureDetector(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xFF9c9c9c))
                        ),
                        child: Row(
                            children: [
                              SizedBox(width: 40,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('images/apple-logo.png'),
                              ),
                              SizedBox(width: 7,),
                              Text(
                                'Continue with Apple',
                                style: GoogleFonts.dmSans(
                                    textStyle: TextStyle(fontSize: 18,color: Color(0xFF9c9c9c))
                                ),
                              )
                            ]
                        )
                    ),
                  ),
                ),
                SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account ?  ',
                      style: GoogleFonts.dmSans(
                          textStyle: TextStyle(fontSize: 18,)
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.dmSans(
                            textStyle: TextStyle(fontSize: 18,color: c2,fontWeight: FontWeight.w500)
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 38),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/LOGO.png',height: 30,),
                    SizedBox(width: 7.5,),
                    Text(
                      'Gamify',
                      style: GoogleFonts.dmSans(
                        textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        )
      )
    );
  }
}
