import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/uiDesigns.dart';
import 'bmicalculator.dart';

class BmiCalculate extends StatefulWidget {
  @override
  _BmiCalculateState createState() => _BmiCalculateState();
}

class _BmiCalculateState extends State<BmiCalculate> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var value = 10.0;
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
        appBar: AppBar(centerTitle: true,title: Text('BMI CALCULATOR',style: TextStyle(fontWeight: FontWeight.bold),),),
        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Text(
              'BMI',
              style: Theme.of(context).textTheme.headline2
            ),
            SizedBox(
              height: 20,
            ),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.3,
            ),

            MyUIDesigns.emailTextField,
            MyUIDesigns.weightTextField,
            SizedBox(
              height: 10,
            ),

            SizedBox(
              height: 20,
            ),
            RiasedBtnsubmit(
              color: Colors.lightGreen,
              textColor: Colors.white,
              text: 'Calculate',
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => BmiCalculator()));
              },
            )

            // Slider(
            //   min: 1.0,
            //   activeColor: Colors.red,
            //   max: 100.0,
            //   onChanged: (newValue) {
            //     setState(() {
            //       value = newValue;
            //     });
            //   },
            //   value: value,
            //   divisions: 10,
            //   label: '$value',
            // )
          ],
        ),
      ),
    ));
  }
}
