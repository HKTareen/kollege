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
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 10),
              child: Flexible(
                  child: Text(
                'Chateau Teyssier Saint Emilion Grand Cru 2014',
                style: subject,
                textAlign: TextAlign.left,
                maxLines: 2,
              )),
            ),
            Positioned(
                top: 80,
                left: 30,
                child: Text(
                  'Full Bodied Red',
                  style: paragraph,
                )),
            Positioned(top: 100,left: 30,
                child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Container(decoration: BoxDecoration(),
                      child: Image(fit: BoxFit.fill,
                        image: AssetImage('assets/images/bear.jpg',),
                      ),
                    ))),
            Positioned(top: 100,left: 300,
              child: Column(
                children: [
                  Text('hamza'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('hamza'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('hamza'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

