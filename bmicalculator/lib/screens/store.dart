import 'package:flutter/material.dart';
import 'package:myfirst/components/Items.dart';
import 'package:myfirst/components/constants.dart';
import 'package:myfirst/components/heading.dart';

class MyStore extends StatefulWidget {
  @override
  _MyStoreState createState() => _MyStoreState();
}

class _MyStoreState extends State<MyStore> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            MainHead(),
            Items(),
            Items(),
            Items(),

          ],
        ),
      ),
    );
  }
}
