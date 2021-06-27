import 'package:flutter/material.dart';
import 'package:myfirst/components/constants.dart';

class InsertImage extends StatefulWidget {
  @override
  _InsertImageState createState() => _InsertImageState();
}

class _InsertImageState extends State<InsertImage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 170,
        height: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(300),
            border: Border.all(color: Colors.black, width: 5)),
        child: Column(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Please Select Image',style: TextStyle(color: KisAuctionPrimaryClr.shade100,fontSize: 15),),
            SizedBox(height: 45,),
            Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: Icon(Icons.add_a_photo,size: 26,),
            )
          ],
        ),
      ),
    );
  }
}
