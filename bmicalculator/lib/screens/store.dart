import 'package:flutter/material.dart';
import 'package:myfirst/components/constants.dart';

class MyStore extends StatefulWidget {
  @override
  _MyStoreState createState() => _MyStoreState();
}

class _MyStoreState extends State<MyStore> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          child: Expanded(
            child: Column(
              children: [
                SafeArea(
                    child: SizedBox(
                        height: size.height * 0.3,
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
                                      SizedBox(width: size.width*0.54,),
                                      IconButton(icon: Icon(Icons.person_pin,color: KisLightColor,),onPressed: null,),
                                      SizedBox(width: 10,),
                                      IconButton(icon: Icon(Icons.shopping_basket,color: KisLightColor,),onPressed: null,)
                                    ],
                                  ),
                                ),
                                Positioned(top: 50,left: 50,child: Text("SUN'S OUT",style: heading,)),
                                Positioned(top: 75,left: 50,child: Text('24 March--01 April',style: focusParagraph,))
                              ],
                            ))))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
