import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gamify/theme/color.dart';
import 'package:gamify/theme/polygonElement.dart';
import 'dart:math';

class WordGenerate extends StatefulWidget {
  const WordGenerate({Key? key}) : super(key: key);

  @override
  State<WordGenerate> createState() => _WordGenerateState();
}

class _WordGenerateState extends State<WordGenerate> {

  int level = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            CustomPaint(
              painter: Polygon(sides: 6,off_x: 0.95,off_y: 0.03,radius_factor: 12.6,rotation: pi/6,color: c3),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ),
            CustomPaint(
              painter: Polygon(sides: 6,off_x: 0.88,off_y: 0.091,radius_factor: 12.6,rotation: pi/6,color: c2),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ),
            Container(
              alignment: Alignment(0.78, -0.852),
              child: Text(
                '$level',
                style: GoogleFonts.dmSans(
                  textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white)
                ),
              ),
            ),
            CustomPaint(
              painter: Polygon(sides: 6,off_x: 0.95,off_y: 0.153,radius_factor: 12.6,rotation: pi/6,color: c1),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ),
            CustomPaint(
              painter: Polygon(sides: 6,off_x: 0.71,off_y: 0.225,radius_factor: 20,rotation: pi/6,color: c1),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ),
            Container(
              alignment: Alignment(0.435, -0.57),
              child: Text(
                'E',
                style: GoogleFonts.dmSans(
                    textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white)
                ),
              ),
            ),
            Container(
              alignment: Alignment(0.78, -0.57),
              child: Text(
                'Easy',
                style: GoogleFonts.dmSans(
                    textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: c1)
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60,),
                Padding(
                    padding: const EdgeInsets.only(left: 27),
                    child: Row(
                      children: [
                        Image.asset('images/LOGO.png',height: 40,),
                        SizedBox(width: 5,),
                        Text(
                          'Vocabulary',
                          style: GoogleFonts.dmSans(
                              textStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)
                          ),
                        )
                      ],
                    )
                ),
                SizedBox(height: 60,),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Icon(Icons.arrow_back,size: 30,),
                )
              ],
            ),
          ],
        )
    );
  }
}
