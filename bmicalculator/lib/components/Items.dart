import 'package:flutter/material.dart';
import 'package:myfirst/components/constants.dart';

class Items extends StatefulWidget {
  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 300,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
        color: KisLightColor,
        child: Stack(
          children: [
            
          ],
        ),
      ),
    );
  }
}
