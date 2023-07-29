import 'package:flutter/material.dart';
import 'package:gamify/theme/polygonElement.dart';
import 'dart:math';
import 'package:gamify/theme/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gamify/pages/login.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c2,
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
              painter: Polygon(sides: 6,off_x: 0.923,off_y: 0.046,radius_factor: 5.6,rotation: 0,color: Colors.white),
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
              children: [
                SizedBox(height: 300,),
                Container(
                  child: GestureDetector(
                    child: Image.asset('images/LOGO-home.png'),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                    },
                  ),
                  alignment: Alignment(0,0),
                ),
                // Animate(
                //   controller: ,
                //   effects: [
                //     FadeEffect(duration: 2.seconds)
                //   ],
                //   onComplete: (){},
                //   child:
                // ),
                SizedBox(height: 17,),
                Text(
                  'Gamify',
                  style: GoogleFonts.dmSans(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                      )
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
