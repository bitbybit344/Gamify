//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gamify/pages/signup.dart';
import 'package:gamify/pages/login.dart';
import 'package:gamify/pages/home.dart';
import 'package:gamify/pages/subject.dart';
import 'package:gamify/pages/difficulty.dart';
import 'package:gamify/pages/game_screens/word_generate.dart';
import 'package:gamify/pages/levels.dart';
import 'package:gamify/pages/game_screens/memory_easy.dart';
import 'package:gamify/pages/profile.dart';
import 'package:gamify/pages/game_screens/make_sentence.dart';

Future main() async{

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual
  );
  //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle());

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/home': (context) => Home(),
      '/login': (context) => Login(),
      '/signup': (context) => Signup(),
      '/sub': (context) => Subject(),
      '/diff': (context) => Difficulty(),
      '/level':(context) => Levels(),
      '/mem': (context) => MemoryE(),
      '/prof': (context) => Profile(),
      '/sent': (context) => Sentence()
    },
  ));
}