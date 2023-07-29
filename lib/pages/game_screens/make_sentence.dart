import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gamify/theme/color.dart';
import 'package:gamify/theme/polygonElement.dart';
import 'dart:math';

class Sentence extends StatefulWidget {
  const Sentence({Key? key}) : super(key: key);

  @override
  State<Sentence> createState() => _SentenceState();
}

class _SentenceState extends State<Sentence> {

  List<String> data = ['He','Him','His','be','can','is','speak','speaks','spoke'];
  List<bool> selection = [true,true,true,true,true,true,true,true,true];

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
                '1',
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
              painter: Polygon(sides: 6,off_x: 0.695,off_y: 0.138,radius_factor: 20,rotation: pi/6,color: c1),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ),
            Container(
              alignment: Alignment(0.4, -0.75),
              child: Text(
                'E',
                style: GoogleFonts.dmSans(
                    textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white)
                ),
              ),
            ),
            Container(
              alignment: Alignment(0.7, -0.75),
              child: Text(
                'Easy',
                style: GoogleFonts.dmSans(
                    textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: c1)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60,),
                  GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back,size: 30,)
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Image.asset('images/LOGO.png',height: 40,),
                      SizedBox(width: 5,),
                      Text(
                        'Grammar',
                        style: GoogleFonts.dmSans(
                            textStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 60,),
                  Container(
                    child: Center(
                      child: Text(
                        'Form proper sentences',
                        style: GoogleFonts.dmSans(
                            textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  // Expanded(
                  //     child: GridView.builder(
                  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  //       physics: NeverScrollableScrollPhysics(),
                  //       itemBuilder: (context,index) =>
                  //       itemCount: 12,
                  //     )
                  // )
                  Text(
                    'Set 1',
                    style: GoogleFonts.dmSans(textStyle: TextStyle(color: Color(0xFF808080))),
                  ),
                  Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context,index) => GestureDetector(
                          onTap: (){
                            setState(() {
                              selection[index] = !selection[index];
                              if(!selection[0]&&!selection[4]&&!selection[6]&&selection[1]&&selection[2]&&selection[5]&&selection[7]&&selection[8]) {
                                print("Won");
                                showDialog(
                                    context: context,
                                    builder: (context) =>
                                        AlertDialog(
                                          title: Row(
                                            children: [
                                              Image.asset(
                                                'images/LOGO.png', scale: 4,),
                                              SizedBox(width: 10,),
                                              Text(
                                                'Gamify',
                                                style: GoogleFonts.dmSans(
                                                    textStyle: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight: FontWeight
                                                            .bold)
                                                ),
                                              ),
                                              SizedBox(width: 110,),
                                              Icon(Icons.close)
                                            ],
                                          ),
                                          content: Text(
                                            'You Won !!',
                                            style: GoogleFonts.dmSans(
                                                textStyle: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold)
                                            ),
                                          ),
                                        )
                                );
                              }
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 250),
                            curve: Curves.easeInOut,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: selection[index] ? Color(0Xff438aff) : Color(0xFFa23ce0),
                              border: Border.all(color: Colors.black,width: 1)
                            ),
                            margin: EdgeInsets.all(7),
                            child: Center(
                              child: Text(
                                '${data[index]}',
                                style: GoogleFonts.dmSans(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19
                                  )
                                ),
                              ),
                            ),
                          ),
                        ),
                        itemCount: 3,
                      )
                  ),
                  Text(
                    'Set 2',
                    style: GoogleFonts.dmSans(textStyle: TextStyle(color: Color(0xFF808080))),
                  ),
                  Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context,index) => GestureDetector(
                          onTap: (){
                            setState(() {
                              selection[index+3] = !selection[index+3];
                              if(!selection[0]&&!selection[4]&&!selection[6]&&selection[1]&&selection[2]&&selection[5]&&selection[7]&&selection[8]) {
                                print("Won");
                                showDialog(
                                    context: context,
                                    builder: (context) =>
                                        AlertDialog(
                                          title: Row(
                                            children: [
                                              Image.asset(
                                                'images/LOGO.png', scale: 4,),
                                              SizedBox(width: 10,),
                                              Text(
                                                'Gamify',
                                                style: GoogleFonts.dmSans(
                                                    textStyle: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight: FontWeight
                                                            .bold)
                                                ),
                                              ),
                                              SizedBox(width: 110,),
                                              Icon(Icons.close)
                                            ],
                                          ),
                                          content: Text(
                                            'You Won !!',
                                            style: GoogleFonts.dmSans(
                                                textStyle: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold)
                                            ),
                                          ),
                                        )
                                );
                              }
                            });
                          },
                          child:  AnimatedContainer(
                            duration: Duration(milliseconds: 250),
                            curve: Curves.easeInOut,
                            height: 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: selection[index+3] ? Color(0Xff438aff) : Color(0xFFa23ce0),
                                border: Border.all(color: Colors.black,width: 1)
                            ),
                            margin: EdgeInsets.all(7),
                            child: Center(
                              child: Text(
                                '${data[index+3]}',
                                style: GoogleFonts.dmSans(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19
                                    )
                                ),
                              ),
                            ),
                          ),
                        ),
                        itemCount: 3,
                      )
                  ),
                  Text(
                    'Set 3',
                    style: GoogleFonts.dmSans(textStyle: TextStyle(color: Color(0xFF808080))),
                  ),
                  Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context,index) => GestureDetector(
                          onTap: (){
                            setState(() {
                              selection[index+6] = !selection[index+6];
                              if(!selection[0]&&!selection[4]&&!selection[6]&&selection[1]&&selection[2]&&selection[5]&&selection[7]&&selection[8]) {
                                print("Won");
                                showDialog(
                                    context: context,
                                    builder: (context) =>
                                        AlertDialog(
                                          title: Row(
                                            children: [
                                              Image.asset(
                                                'images/LOGO.png', scale: 4,),
                                              SizedBox(width: 10,),
                                              Text(
                                                'Gamify',
                                                style: GoogleFonts.dmSans(
                                                    textStyle: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight: FontWeight
                                                            .bold)
                                                ),
                                              ),
                                              SizedBox(width: 110,),
                                              Icon(Icons.close)
                                            ],
                                          ),
                                          content: Text(
                                            'You Won !!',
                                            style: GoogleFonts.dmSans(
                                                textStyle: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold)
                                            ),
                                          ),
                                        )
                                );
                              }
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 250),
                            curve: Curves.easeInOut,
                            height: 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: selection[index+6] ? Color(0Xff438aff) : Color(0xFFa23ce0),
                                border: Border.all(color: Colors.black,width: 1),
                            ),
                            margin: EdgeInsets.all(7),
                            child: Center(
                              child: Text(
                                '${data[index+6]}',
                                style: GoogleFonts.dmSans(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19
                                    )
                                ),
                              ),
                            ),
                          ),
                        ),
                        itemCount: 3,
                      )
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
