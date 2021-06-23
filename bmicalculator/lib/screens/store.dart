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
                                  left: 20,
                                  child: Row(mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Hi Stefen!',
                                        style: subHeading,
                                      ),
                                      Icon(Icons.person_pin,color: KisLightColor,),
                                      Icon(Icons.shopping_basket,color: KisLightColor,)
                                    ],
                                  ),
                                ),
                                Positioned(top: 40,left: 20,child: Text("SUN'S OUT",style: heading,)),
                                Positioned(top: 45,left: 20,child: Text('24 March-01 April',style: focusParagraph,))
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
