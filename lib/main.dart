import 'package:api_sample/functions/provider.dart';
import 'package:api_sample/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 
 
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => Userprovider(), 
      child:const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homescreen(),
      ),
    );
  }
}