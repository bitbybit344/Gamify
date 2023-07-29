import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gamify/theme/color.dart';
import 'package:gamify/theme/polygonElement.dart';
import 'dart:math';
import 'package:confetti/confetti.dart';
import 'dart:async';

class MemoryE extends StatefulWidget {
  const MemoryE({Key? key}) : super(key: key);

  @override
  State<MemoryE> createState() => _MemoryEState();
}

class _MemoryEState extends State<MemoryE> {

  List<GlobalKey<FlipCardState>> cardStateKeys = [GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),GlobalKey<FlipCardState>(),];
  List<bool> cardFlips = [true,true,true,true,true,true,true,true,true,true,true,true];
  List<String> data = ["Hello","Hello","Smile","Smile","Happy","Happy","Hope","Hope","Feel","Feel","Gamify","Gamify"];
  int previousIndex = -1;
  bool flip = false;

  @override
  void initState() {
    super.initState();
    data.shuffle();
  }

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
                '2',
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
                        'Vocabulary',
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
                        'Flip, Memorize, Match !',
                        style: GoogleFonts.dmSans(
                          textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Expanded(
                      child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context,index) => FlipCard(
                            key: cardStateKeys[index],
                            onFlip: (){
                              if(!flip){
                                flip = true;
                                previousIndex = index;
                              }
                              else{
                                flip = false;
                                if(previousIndex!=index){
                                  if(data[previousIndex]!=data[index]){
                                    cardStateKeys[previousIndex]
                                        .currentState
                                        ?.toggleCard();
                                    previousIndex = index;
                                  }
                                  else{
                                    cardFlips[previousIndex] = false;
                                    cardFlips[index] = false;
                                    if(cardFlips.every((t)=>t==false)){
                                      print('Win');
                                      showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            title: Row(
                                              children: [
                                                Image.asset('images/LOGO.png',scale: 4,),
                                                SizedBox(width: 10,),
                                                Text(
                                                  'Gamify',
                                                  style: GoogleFonts.dmSans(
                                                      textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
                                                  ),
                                                ),
                                                SizedBox(width: 110,),
                                                Icon(Icons.close)
                                              ],
                                            ),
                                            content: Text(
                                              'You Won !!',
                                              style: GoogleFonts.dmSans(
                                                  textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
                                              ),
                                            ),
                                          )
                                      );
                                    }
                                  }
                                }
                              }
                            },
                            flipOnTouch: cardFlips[index],
                            front: Container(
                              margin: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: c4,
                                  border: Border.all(color: c5,width: 4)
                              ),
                              height: 50,
                              width: 50,
                            ),
                            back: Container(
                              margin: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: c6,
                                  border: Border.all(color: Colors.black,width: 2)
                              ),
                              height: 50,
                              width: 50,
                              child: Center(
                                child: Text(
                                  "${data[index]}",
                                  style: GoogleFonts.dmSans(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),
                          ),
                        itemCount: 12,
                      )
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}
