import "package:flutter/material.dart";
import "dart:math";
void main(){
  return runApp(
    MaterialApp(home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(title: Center(child: Text("Dice Game",style: TextStyle(fontSize: 30.0),),),
      backgroundColor: Colors.redAccent,
      ),
      body: DicePage(),
    ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
     int left=1;
     int right=1;
     void setdice(){
       setState(() {
          left=Random().nextInt(6)+1;
              right=Random().nextInt(6)+1;

       });
     }
  @override
  Widget build(BuildContext context) {
    return Center(child:
    
    Row(children: <Widget>[
      Expanded(
        flex: 1 ,
        child:FlatButton( 
          onPressed:(){
            setState(() {
             setdice();
            });
          },
          child: Image.asset("images/dice$left.png"),),
      ),
      Expanded(
        
        flex:1,
        child:FlatButton(onPressed:(){
          setState(() {
              setdice();
          });
        },
        child: Image(image: AssetImage("images/dice$right.png"),),),),
    ],),);
  }
}
