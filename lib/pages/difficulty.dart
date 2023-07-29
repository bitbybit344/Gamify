import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gamify/theme/color.dart';
import 'package:gamify/theme/polygonElement.dart';
import 'dart:math';
import 'package:gamify/pages/levels.dart';

class Difficulty extends StatefulWidget {
  const Difficulty({Key? key}) : super(key: key);

  @override
  State<Difficulty> createState() => _DifficultyState();
}

class _DifficultyState extends State<Difficulty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(
              children: [
                CustomPaint(
                  painter: Polygon(sides: 6,off_x: 0.67,off_y: -0.017,radius_factor: 6.8,rotation: 0.015*pi,color: c3),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
                CustomPaint(
                  painter: Polygon(sides: 6,off_x: 0.923,off_y: 0.046,radius_factor: 5.6,rotation: 0,color: c1),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
                CustomPaint(
                  painter: Polygon(sides: 6,off_x: 0.91,off_y: 0.19,radius_factor: 6.2,rotation: 0,color: c2),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 60,),
                    Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Row(
                          children: [
                            Image.asset('images/LOGO.png',height: 30,),
                            SizedBox(width: 5,),
                            Text(
                              'Gamify',
                              style: GoogleFonts.dmSans(
                                  textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)
                              ),
                            )
                          ],
                        )
                    ),
                    SizedBox(height: 55,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                          'Select a\nDifficulty level',
                          style: GoogleFonts.dmSans(
                              textStyle: const TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold
                              )
                          )
                      ),
                    ),
                    SizedBox(height: 50,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Levels()));
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
                              'Easy',
                              style: GoogleFonts.dmSans(
                                  textStyle: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w600 )
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Levels()));
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
                              'Medium',
                              style: GoogleFonts.dmSans(
                                  textStyle: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w600 )
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Levels()));
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
                              'Hard',
                              style: GoogleFonts.dmSans(
                                  textStyle: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w600 )
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 65,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xffaeaeae),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          width: 315,
                          height: 40,
                          child: Center(
                            child: Text(
                              'Back to Main Menu',
                              style: GoogleFonts.dmSans(
                                  textStyle: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w600 )
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
        )
    );
  }
}
