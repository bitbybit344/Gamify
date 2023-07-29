import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gamify/theme/color.dart';
import 'package:gamify/theme/polygonElement.dart';
import 'dart:math';
import 'package:gamify/pages/difficulty.dart';

class Subject extends StatefulWidget {
  const Subject({Key? key}) : super(key: key);

  @override
  State<Subject> createState() => _SubjectState();
}

class _SubjectState extends State<Subject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 60,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Image.asset('images/LOGO.png',height: 30,),
                          SizedBox(width: 5,),
                          Text(
                            'Gamify',
                            style: GoogleFonts.dmSans(
                                textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)
                            ),
                          ),
                          SizedBox(width: 176,),
                          Image.asset('images/person-icon.png')
                        ],
                      )
                    ),
                    SizedBox(height: 55,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                          'Choose a\nsubject to learn',
                          style: GoogleFonts.dmSans(
                              textStyle: const TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold
                              )
                          )
                      ),
                    ),
                    SizedBox(height: 50,),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        'English',
                        style: GoogleFonts.dmSans(
                            textStyle: TextStyle(fontSize: 18,color: Color(0xff767676),fontWeight: FontWeight.w600 )
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Difficulty()));
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          decoration: BoxDecoration(
                              color: c2,
                              borderRadius: BorderRadius.circular(8)
                          ),
                          width: 315,
                          height: 40,
                          child: Center(
                            child: Text(
                              'Vocabulary',
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Difficulty()));
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          decoration: BoxDecoration(
                              color: c2,
                              borderRadius: BorderRadius.circular(8)
                          ),
                          width: 315,
                          height: 40,
                          child: Center(
                            child: Text(
                              'Grammar',
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Difficulty()));
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          decoration: BoxDecoration(
                              color: c2,
                              borderRadius: BorderRadius.circular(8)
                          ),
                          width: 315,
                          height: 40,
                          child: Center(
                            child: Text(
                              'Pronunciation',
                              style: GoogleFonts.dmSans(
                                  textStyle: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w600 )
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        'Mathematics',
                        style: GoogleFonts.dmSans(
                            textStyle: TextStyle(fontSize: 18,color: Color(0xff767676),fontWeight: FontWeight.w600 )
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Difficulty()));
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          decoration: BoxDecoration(
                              color: c1,
                              borderRadius: BorderRadius.circular(8)
                          ),
                          width: 315,
                          height: 40,
                          child: Center(
                            child: Text(
                              'Trigonometry',
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Difficulty()));
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          decoration: BoxDecoration(
                              color: c1,
                              borderRadius: BorderRadius.circular(8)
                          ),
                          width: 315,
                          height: 40,
                          child: Center(
                            child: Text(
                              'Calculus',
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
