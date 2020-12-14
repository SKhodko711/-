import 'package:flutter/material.dart';
import 'package:moodairy/models/activity.dart';
import 'package:moodairy/models/moodcard.dart';
import 'package:moodairy/screens/chart.dart';
import 'package:moodairy/screens/homepage.dart';
import 'package:moodairy/screens/start.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
    value: MoodCard(),
    child:
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StartPage(),
      routes: {

        '/home_screen':(ctx)=>HomeScreen(),
        '/chart':(ctx)=> MoodChart(),
      },
    ));
  }
}

