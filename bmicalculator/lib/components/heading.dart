import 'package:flutter/material.dart';
import 'constants.dart';

class MainHead extends StatefulWidget {
   final String startDate;
   final String endDate;
   MainHead({this.startDate='24 March', this.endDate='01 April'});
  @override
  _MainHeadState createState() => _MainHeadState();
}

class _MainHeadState extends State<MainHead> {


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  SafeArea(
        child: SizedBox(
            height: size.height * 0.26,
            width: size.width,
            child: Card(
                color: KisPrimaryColor,
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 50,
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hi Stefen!',
                            style: subHeading,
                          ),
                          SizedBox(width: size.width*0.39,),
                          IconButton(icon: Icon(Icons.person_outline,color: KisLightColor,),onPressed: (){print('hamza');},),
                          IconButton(icon: Icon(Icons.shopping_basket_outlined,color: KisLightColor,),onPressed: null,)
                        ],
                      ),
                    ),
                    Positioned(top: 60,left: 50,child: Text("SUN'S OUT!!",style: heading,)),
                    Positioned(top: 90,left: 50,child: Text('${widget.startDate}--${widget.endDate}',style: focusParagraph,)),
                    Positioned(bottom: 30,left: 15,child: Icon(Icons.arrow_back_ios,color: KisLightColor,size: 20,)),
                    Positioned(bottom: 30,left: size.width*0.91,child: Icon(Icons.arrow_forward_ios,color: KisGray,size: 20,))
                  ],
                ))));
  }
}
