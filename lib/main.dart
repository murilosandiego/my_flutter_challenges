import 'package:flutter/material.dart';
import 'package:my_flutter_challenges/screens/book_reading/home_reading.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Flutter Challenges',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(brightness: Brightness.light),
        ),
        home: HomeReading());
  }
}
