import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'result_page.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.grey,
);
const heightValueStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
  color: Colors.white,
);
const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF115327);
const inactiveCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color(0xFFEB1559),
          borderRadius: BorderRadius.circular(10),
        ),
        height: bottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundIconButton({@required this.icon, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 46.0,
        height: 46.0,
      ),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Colors.blue[700],
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
