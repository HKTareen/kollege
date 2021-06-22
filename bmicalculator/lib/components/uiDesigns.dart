import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyUIDesigns {
  static TextEditingController email = TextEditingController();
  static TextEditingController pas = TextEditingController();
  static TextEditingController height = TextEditingController();
  static TextEditingController weight = TextEditingController();
  static Widget logo = ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(200)),
      child: Image(
        image: AssetImage('assets/images/ggLogo.png'),
        width: 150,
        height: 150,
        fit: BoxFit.fill,
      ));

  static Widget backGroundMain = Expanded(
      child: Image(
        image: AssetImage('assets/images/background1.jpg'),
        fit: BoxFit.cover,
      ));

  static Widget welcome = Text(
    'Welcome Back!',
    style: TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
  );
  static Widget loginNote = Text(
    'Log in to your existing iHope account',
    style: TextStyle(
      color: Colors.grey,
      fontSize: 14,
    ),
  );

  static Widget emailTextField = ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: TextField(
        autofocus: true,
        controller: height,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          fillColor: Colors.white54,
          filled: true,
          prefixIcon: Icon(Icons.person),
          hoverColor: Colors.grey,
          hintText: 'Enter Height cm',

          //  helperText: 'e.g xyz@domain.com',
          //   labelText: 'Email',
          // border: OutlineInputBorder(
          //     borderSide: BorderSide(color: Colors.greenAccent.shade400))
        ),
      ));
  static Widget weightTextField = ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: TextField(
        autofocus: true,
        controller: weight,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          fillColor: Colors.white54,
          filled: true,
          prefixIcon: Icon(Icons.emoji_people_rounded),
          hoverColor: Colors.grey,
          hintText: 'Enter Weight kg',

          //  helperText: 'e.g xyz@domain.com',
          //   labelText: 'Email',
          // border: OutlineInputBorder(
          //     borderSide: BorderSide(color: Colors.greenAccent.shade400))
        ),
      ));

  static Widget passTextField = ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: TextField(
        autofocus: true,
        controller: pas,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            filled: true,
            fillColor: Colors.white54,
            prefixIcon: Icon(Icons.lock),
            hoverColor: Colors.grey,
            hintText: 'Enter your Password',
            //  labelText: 'Password',
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal, width: 5.0))),
      ));
}
  class  AddRemoveBtn {

  final Function ontap;

  AddRemoveBtn(this.ontap);

  @override
    Widget build(BuildContext context) {
      return
        Container(
          height: 40,
          width: 100,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.blue,
                  size: 20,
                ),
                onPressed: ontap,
              ),
              Container(
                color: Colors.blue,
                height: 80,
                width: 1,
              ),
              IconButton(
                icon: Icon(
                  Icons.remove,
                  color: Colors.blue,
                  size: 20,
                ),
                onPressed: ontap,
              ),
            ],
          ),
        );
    }
  }

  class DropdownBtn extends StatefulWidget {
  static var  menuitems = ['Standard','Metric'];
    @override
    _DropdownBtnState createState() => _DropdownBtnState();
  }

  class _DropdownBtnState extends State<DropdownBtn> {
    var value = 'Standard';
    @override
    Widget build(BuildContext context) {
      return DropdownButton(style: TextStyle(fontSize: 22,),
        items: DropdownBtn.menuitems.map((String item) {
          return DropdownMenuItem(child: Text(item), value: item);
        }).toList(),
        icon: Icon(Icons.arrow_downward),
        onChanged: (value){
          setState(() {
            this.value=value;
          });
        },
        value: value,
        dropdownColor: Colors.grey.shade100,

      );
    }
  }



class RiasedBtnsubmit extends StatelessWidget {
  final Color color;
  final String text;
  final Function onTap;
  final Icon icon;
  final Color hoverColor;
  final Widget widget;
  final Color textColor;

  RiasedBtnsubmit(
      {this.color,
      this.text,
      this.onTap,
      this.icon,
      this.hoverColor,
      this.widget,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        width: 200, height: 50,
        // ignore: deprecated_member_use
        child: RaisedButton(
            hoverColor: hoverColor,
            color: color,
            elevation: 2.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon != null
                    ? Row(
                        children: [
                          icon,
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 1),
                            child: Container(
                              width: 1,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    : Container(),
                Text(
                  text,
                  style: TextStyle(
                      color: textColor,
                      fontFamily: 'Frutiger',
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            onPressed: () {
              if (MyUIDesigns.email.text == 'hamza@greengro.pk' &&
                  MyUIDesigns.pas.text == 'hamza') {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => widget));
              } else {
                onTap();
              }
            }),
      ),
    );
  }

  static showMsg(BuildContext context, {int index}) {
    var dialog = AlertDialog(
        title: Text('Mashallah'), content: Text('Sb thek thak hai'));
    showDialog(context: context, builder: (context) => dialog);
  }
}
