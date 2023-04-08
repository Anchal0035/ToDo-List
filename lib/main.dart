import 'dart:io';

import'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive_flutter/hive_flutter.dart';


import 'HomePage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  //init hive
  await Hive.initFlutter();
    //open box(file)
   var box=await Hive.openBox("todoBox");

   runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),

      theme:ThemeData(primarySwatch: Colors.yellow,)
    );
  }
}


