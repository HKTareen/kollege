import 'package:flutter/material.dart';
import 'package:myfirst/components/constants.dart';
import 'package:myfirst/screens/store.dart';

import 'bmi.dart';
import 'components/Items.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: ,
      // ),
      home: MyStore()//BmiCalculate()
    );
  }
}

