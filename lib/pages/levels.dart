import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gamify/theme/color.dart';
import 'package:gamify/theme/polygonElement.dart';
import 'dart:math';
import 'package:gamify/pages/subject.dart';
import 'package:gamify/pages/game_screens/memory_easy.dart';
import 'package:gamify/pages/game_screens/make_sentence.dart';

class Levels extends StatefulWidget {
  const Levels({Key? key}) : super(key: key);

  @override
  State<Levels> createState() => _LevelsState();
}

class _LevelsState extends State<Levels> {

  var arrColors = [c1,c2,c3];
  //List<Widget> widgets = [];
  double X = 0.18;
  double Y = 0.42;
  double iX = 0.3;
  double iY = 0.13;
  double radiusFactor = 8.4;
  List<int> data = [1,2,3,4,5,6,7,8,9,10,11,12];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            // GestureDetector(
            //   onTap: (){
            //
            //   },
            //   child: CustomPaint(
            //     painter: Polygon(sides: 6,off_x: X,off_y: Y,radius_factor: radiusFactor,rotation: pi/6,color: c3),
            //     child: SizedBox(
            //       width: MediaQuery.of(context).size.width,
            //       height: MediaQuery.of(context).size.height,
            //     ),
            //   ),
            // ),
            // GestureDetector(
            //   onTap: (){
            //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => MemoryE()));
            //   },
            //   child: CustomPaint(
            //     painter: Polygon(sides: 6,off_x: X+iX,off_y: Y,radius_factor: radiusFactor,rotation: pi/6,color: c3),
            //     child: SizedBox(
            //       width: MediaQuery.of(context).size.width,
            //       height: MediaQuery.of(context).size.height,
            //     ),
            //   ),
            // ),
            // GestureDetector(
            //   child: CustomPaint(
            //     painter: Polygon(sides: 6,off_x: X+2*iX,off_y: Y,radius_factor: radiusFactor,rotation: pi/6,color: c3),
            //     child: SizedBox(
            //       width: MediaQuery.of(context).size.width,
            //       height: MediaQuery.of(context).size.height,
            //     ),
            //   ),
            // ),
            // GestureDetector(
            //   child: CustomPaint(
            //     painter: Polygon(sides: 6,off_x: X,off_y: Y+iY,radius_factor: radiusFactor,rotation: pi/6,color: c3),
            //     child: SizedBox(
            //       width: MediaQuery.of(context).size.width,
            //       height: MediaQuery.of(context).size.height,
            //     ),
            //   ),
            // ),
            // GestureDetector(
            //   child: CustomPaint(
            //     painter: Polygon(sides: 6,off_x: X+iX,off_y: Y+iY,radius_factor: radiusFactor,rotation: pi/6,color: c3),
            //     child: SizedBox(
            //       width: MediaQuery.of(context).size.width,
            //       height: MediaQuery.of(context).size.height,
            //     ),
            //   ),
            // ),
            // GestureDetector(
            //   child: CustomPaint(
            //     painter: Polygon(sides: 6,off_x: X+2*iX,off_y: Y+iY,radius_factor: radiusFactor,rotation: pi/6,color: c3),
            //     child: SizedBox(
            //       width: MediaQuery.of(context).size.width,
            //       height: MediaQuery.of(context).size.height,
            //     ),
            //   ),
            // ),
            // GestureDetector(
            //   child: CustomPaint(
            //     painter: Polygon(sides: 6,off_x: X,off_y: Y+2*iY,radius_factor: radiusFactor,rotation: pi/6,color: c3),
            //     child: SizedBox(
            //       width: MediaQuery.of(context).size.width,
            //       height: MediaQuery.of(context).size.height,
            //     ),
            //   ),
            // ),
            // GestureDetector(
            //   child: CustomPaint(
            //     painter: Polygon(sides: 6,off_x: X+iX,off_y: Y+2*iY,radius_factor: radiusFactor,rotation: pi/6,color: c3),
            //     child: SizedBox(
            //       width: MediaQuery.of(context).size.width,
            //       height: MediaQuery.of(context).size.height,
            //     ),
            //   ),
            // ),
            // GestureDetector(
            //   child: CustomPaint(
            //     painter: Polygon(sides: 6,off_x: X+2*iX,off_y: Y+2*iY,radius_factor: radiusFactor,rotation: pi/6,color: c3),
            //     child: SizedBox(
            //       width: MediaQuery.of(context).size.width,
            //       height: MediaQuery.of(context).size.height,
            //     ),
            //   ),
            // ),
            // GestureDetector(
            //   child: CustomPaint(
            //     painter: Polygon(sides: 6,off_x: X,off_y: Y+3*iY,radius_factor: radiusFactor,rotation: pi/6,color: c3),
            //     child: SizedBox(
            //       width: MediaQuery.of(context).size.width,
            //       height: MediaQuery.of(context).size.height,
            //     ),
            //   ),
            // ),
            // GestureDetector(
            //   child: CustomPaint(
            //     painter: Polygon(sides: 6,off_x: X+iX,off_y: Y+3*iY,radius_factor: radiusFactor,rotation: pi/6,color: c3),
            //     child: SizedBox(
            //       width: MediaQuery.of(context).size.width,
            //       height: MediaQuery.of(context).size.height,
            //     ),
            //   ),
            // ),
            // GestureDetector(
            //   child: CustomPaint(
            //     painter: Polygon(sides: 6,off_x: X+2*iX,off_y: Y+3*iY,radius_factor: radiusFactor,rotation: pi/6,color: c3),
            //     child: SizedBox(
            //       width: MediaQuery.of(context).size.width,
            //       height: MediaQuery.of(context).size.height,
            //     ),
            //   ),
            // ),
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
                        Image.asset('images/person-icon.png',),
                      ],
                    )
                ),
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                      'Welcome Abcd',
                      style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                          )
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                      'Let\'s Go !!!',
                      style: GoogleFonts.dmSans(
                          textStyle: const TextStyle(
                              fontSize: 28.5,
                              fontWeight: FontWeight.bold
                          )
                      )
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 305,),
                    Image.asset('images/setting-icon.png')
                  ],
                ),
                // Expanded(
                //   child: GridView.builder(
                //       itemCount: 12,
                //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                //       itemBuilder: (context,index){
                //         return CustomPaint(
                //           painter: Polygon(sides: 6,off_x: getX(index),off_y: getY(index),radius_factor: 8.5,rotation: pi/6,color: c1),
                //           size: Size(300,80),
                //         );
                //       }
                //   ),
                // ),
                // Expanded(
                //   child: GridView.builder(
                //       itemCount: 12,
                //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                //       itemBuilder: (context,index){
                //         return Container(
                //           child: Center(
                //             child: Text(
                //               "${data[index]}",
                //               style: GoogleFonts.dmSans(
                //                 textStyle: TextStyle(
                //                   fontWeight: FontWeight.bold,
                //                   fontSize: 20,
                //                   color: Colors.black
                //                 )
                //               ),
                //             ),
                //           ),
                //         );
                //       }
                //   ),
                // ),
                Expanded(
                  child: GridView.builder(
                      itemCount: 9,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                      itemBuilder: (context,index){
                        return Container(
                          child: GestureDetector(
                            onTap: (){
                              if(index==0)
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MemoryE()));
                              if(index==1)
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Sentence()));
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset('images/c1-polygon.png',width: 120,),
                                Text('${data[index]}',style: GoogleFonts.dmSans(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),)
                              ],
                            ),
                          )
                        );
                      }
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Subject()));
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
    );
  }
}

// double getX(int index){
//   return 0.2 + (index%3)*0.3;
// }
//
// double getY(int index){
//   return 0.42 + (index/3)*0.13;
// }
