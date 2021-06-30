import 'package:flutter/material.dart';
import 'package:myfirst/components/constants.dart';
import 'package:myfirst/components/uiDesigns.dart';

import 'insert_image.dart';

class AuctionForm extends StatefulWidget {
  @override
  _AuctionFormState createState() => _AuctionFormState();
}

class _AuctionFormState extends State<AuctionForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(
                Icons.arrow_back_ios,
                color: KisAuctionPrimaryClr.shade200,
                size: 22,
              ),
            ),
            SizedBox(width: 105),
            Text(
              'Add Auction',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        InsertImage(),
        SizedBox(
          height: 20,
        ),
        TextFieldAuction(
          width: MediaQuery.of(context).size.width * 0.95,
          text: 'Commodity Price',
        ),
        SizedBox(
          height: 10,
        ),
        TextFieldAuction(
          width: MediaQuery.of(context).size.width * 0.95,
          text: 'Packaging',
        ),
        SizedBox(
          height: 10,
        ),
        TextFieldAuction(
          width: MediaQuery.of(context).size.width * 0.95,
          text: 'Commodity Color',
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.5, right: 10),
          child: Row(
            children: [
              Expanded(
                child: TextFieldAuction(
                  width: MediaQuery.of(context).size.width * 0.95 / 2,
                  text: 'Available Quantity',
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextFieldAuction(
                  width: MediaQuery.of(context).size.width * 0.95 / 2,
                  text: 'Price Per Unit',
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 10.5, right: 10),
          child: Row(
            children: [
              Expanded(
                child: FieldBox(
                  width: MediaQuery.of(context).size.width * 0.95 / 2,
                  text: 'Category',
                  icon: Icon(Icons.category_outlined,color: KisAuctionPrimaryClr.shade100,),
                  list: MenuItems.category,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: FieldBox(
                  width: MediaQuery.of(context).size.width * 0.95 / 2,
                  text: 'Quality',
                  icon: Icon(
                    Icons.hd_outlined,
                    color: KisAuctionPrimaryClr.shade100,
                  ),
                  list: MenuItems.quality,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        SizedBox(height: 75,
          child: FieldBox(
            width: MediaQuery.of(context).size.width * 0.95,
            text: 'Location',
            icon: Icon(
              Icons.location_on_outlined,
              color: KisAuctionPrimaryClr.shade100,
            ),
            list: MenuItems.location,
          ),
        ),
      ],
    );
  }
}

class MenuItems {
  static var category = [
    'Vegetable',
    'Fruits',
  ];
  static var quality = ['A', 'B', 'C'];
  static var location = ['Lahore', 'Karachi', 'Multan'];
}
