import 'package:flutter/material.dart';
import 'package:myfirst/components/constants.dart';

class Items extends StatefulWidget {
  bool isExpanded = false;

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  var count = 0;
  var expandCollapse = 'Expand';
  var cardWidth = 300.0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: cardWidth,
      width: size.width,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
        color: KisLightColor,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 40),
              child: Text(
                'Chateau Teyssier Saint Emilion Grand Cru 2014',
                style: subject,
                textAlign: TextAlign.left,
                maxLines: 2,
              ),
            ),
            Positioned(
                top: 80,
                left: 30,
                child: Text(
                  'Full Bodied Red',
                  style: paragraph,
                )),
            Positioned(
                top: 100,
                left: 30,
                child: SizedBox(
                    height: 90,
                    width: 90,
                    child: Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 4),
                          borderRadius: BorderRadius.circular(20)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/images/bear.jpg',
                          ),
                        ),
                      ),
                    ))),
            Positioned(
              top: 100,
              left: size.width * 0.64,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RichText(
                    text: TextSpan(style: boldPrimary, children: [
                      TextSpan(text: '€'),
                      TextSpan(text: '35.00'),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(style: boldPrimary, children: [
                      TextSpan(text: 'RRP: ', style: boldSubtitle),
                      TextSpan(text: '€55.00', style: grayValue),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(style: boldPrimary, children: [
                      TextSpan(text: 'ABV: ', style: boldSubtitle),
                      TextSpan(text: '10%', style: grayValue),
                    ]),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 230,
                left: 30,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (widget.isExpanded != true) {
                        widget.isExpanded = true;
                        cardWidth = 480.0;
                        expandCollapse = 'Collapse';
                      } else {
                        widget.isExpanded = false;
                        cardWidth = 300.0;
                        expandCollapse = 'Expand';
                      }
                    });
                  },
                  child: Text(
                    expandCollapse,
                    style: boldPrimaryText,
                  ),
                )),
            if (widget.isExpanded)
                  Positioned(
                    top: 390,
                    left: 30,
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: KisPrimaryColor),
                          child: Center(
                              child: Text(
                            'Add to Basket',
                            style: subHeading,
                          )),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 50,
                          width: 130,
                          decoration: BoxDecoration(
                              color: KisPrimaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                child: Icon(
                                  Icons.remove,
                                  color: KisLightColor,
                                  size: 26,
                                ),
                                onTap: () {
                                  setState(() {
                                    if (count > 0) count--;
                                  });
                                },
                              ),
                              Container(
                                color: KisPrimaryColor.shade100,
                                height: 80,
                                width: 25,
                                child: Center(
                                    child: Text(
                                  count.toString(),
                                  style: TextStyle(
                                      color: KisLightColor, fontSize: 22),
                                )),
                              ),
                              InkWell(
                                child: Icon(
                                  Icons.add,
                                  color: KisLightColor,
                                  size: 26,
                                ),
                                onTap: () {
                                  setState(() {
                                    count++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
            if(widget.isExpanded)
              Positioned(top: 260,left: 30,child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Expanded(
                  child: Text(
                    'God! this thing is great! Made with purpose and it shows.'
                        ' Damn strong,ss',style: paragraph,maxLines: 5,textAlign: TextAlign.left,),
                ),
              ))


          ],
        ),
      ),
    );
  }
}
