import 'package:flutter/material.dart';
import 'package:myfirst/components/uiDesigns.dart';
import 'package:myfirst/main.dart';

class BmiCalculator extends StatefulWidget {
  @override
  _BmiCalculateState createState() => _BmiCalculateState();
}

class _BmiCalculateState extends State<BmiCalculator> {
  var height = double.parse(MyUIDesigns.height.text);
  var weight = double.parse(MyUIDesigns.weight.text);
  var result;

  @override
  void initState() {
    var result = ((weight / height) / height) * 10000;
    this.result = result;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Result'),
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          if (result < 18.5)
            Center(child: Column(children: [
              Image.asset('assets/images/underweight.png',height: height*.7,),
              SizedBox(height: 20,),
              Text('${result.toStringAsFixed(2)}  you are Underweight',style: Theme.of(context).textTheme.headline5,),
            ]))
          else if (result > 18.5 && result < 24.9)
            Center(child: Column(children: [
              Image.asset('assets/images/normal_weight.png',height: height*0.7,),
              SizedBox(height: 20,),
              Text('${result.toStringAsFixed(2)}  Normal Weight',style: Theme.of(context).textTheme.headline5,),
            ]))
          else if (result>24.9&&result<29.9)
              Center(child: Column(children: [
                Image.asset('assets/images/underweight.png',height: height*0.7,),
                SizedBox(height: 20,),
                Text('${result.toStringAsFixed(2)}  OverWeight',style: Theme.of(context).textTheme.headline5,),
              ]))
          else
                Center(child: Column(children: [
                  Image.asset('assets/images/underweight.png',height: height*0.7,),
                  SizedBox(height: 20,),
                  Text('${result.toStringAsFixed(2)}  you are obese',style: Theme.of(context).textTheme.headline5,),
                ]))
        ],
      ),

      // Container(
      //   height: 40,
      //   width: 100,
      //   decoration: BoxDecoration(border: Border.all(color: Colors.blue),borderRadius: BorderRadius.all(Radius.circular(10))),
      //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       IconButton(
      //         icon: Icon(
      //           Icons.add,
      //           color: Colors.blue,
      //           size: 20,
      //         ),
      //         onPressed: () {},
      //       ),
      //       Container(color: Colors.blue,height: 80,width: 1,),
      //       IconButton(
      //         icon: Icon(
      //           Icons.remove,
      //           color: Colors.blue,
      //           size: 20,
      //         ),
      //         onPressed: () {},
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
