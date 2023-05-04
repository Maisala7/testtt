
import 'package:flutter/material.dart';
import 'app_screen/new_screen.dart';


void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
   Widget build(BuildContext context) {
   return MaterialApp(
    title: 'home work',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
        ),
    home: new_screen(),
    
   );
}
  
}