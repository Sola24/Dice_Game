import 'dart:math';
import 'package:flutter/material.dart';
void main(){
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Center(
            child: Text('Welcome to Dice Game'),
          ),
        ),
        body: DicePage(),
      ),
    )
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;
  diceFaceChange(){
    setState(() {
      leftDiceNum = Random().nextInt(6)+1;
      rightDiceNum = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 50.0,),
          Container(
            child: Row(
           children: [
             Expanded(
               child: Image.asset('images/dice$leftDiceNum.png',width: 50,height: 50,),

             ),

             Expanded(

               child: Image.asset('images/dice$rightDiceNum.png',width: 50,height: 50),

             ),
           ]
            ),
          ),
          SizedBox(height: 100.0,),
           Container(
              child: Row(
                children: [
                  TextButton(
                    onPressed: (){
                      diceFaceChange();
                    }, child: Padding(padding:EdgeInsets.only(left: 220) ,child: Text('ROLL',style: TextStyle(color: Colors.red,backgroundColor: Colors.green),)),
                  ),
                ],
              ),
            ),
        ],
      ),

    );
  }
}

