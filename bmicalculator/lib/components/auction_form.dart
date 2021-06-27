import 'package:flutter/material.dart';
import 'package:myfirst/components/constants.dart';

import 'insert_image.dart';
class AuctionForm extends StatefulWidget {
  @override
  _AuctionFormState createState() => _AuctionFormState();
}

class _AuctionFormState extends State<AuctionForm> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
     Row(children: [
       SizedBox(height: 50,),
       Padding(
         padding: const EdgeInsets.only(left: 20),
         child: Icon(Icons.arrow_back_ios,color: KisAuctionPrimaryClr.shade200,size: 22,),
       ),
       SizedBox(width: 105),
       Text('Add Auction',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
     ],),
      SizedBox(height: 5,),
      InsertImage()


    ],);
  }
}
