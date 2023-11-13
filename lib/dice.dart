import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class dice extends StatefulWidget {
    const dice({super.key});


  @override
  State<dice> createState() {
   return diceRoll();
  }
}


class diceRoll extends State<dice>{

  // var activedice = "assets/images/dice_1.png";
  // void press (){
  //   var diceRoll = Random().nextInt(6)+1; // 1 to 6 randomly selected
  //   setState(() {
  //     activedice = "assets/images/dice_$diceRoll.png";
  //    });
  // }

  var activedice = 2;
  void press (){
    setState(() {
      activedice = Random().nextInt(6)+1; // 1 to 6 randomly selected
    });
  }

  @override
  Widget build (Context){
    return Scaffold(
      appBar: AppBar(
        title: Text(" Hello"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(

            child: Column(
              children: [
                SizedBox(height: 100,),
                Image.asset( "assets/images/dice_$activedice.png"),
                // Image.asset(activedice),
                SizedBox(height: 100,),
                ElevatedButton(
                    onPressed: press,
                  child: Text("Press"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  )
                ),
                ),
              ],
            ),



      ),
    );
  }
}