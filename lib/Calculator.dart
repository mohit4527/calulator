import 'package:flutter/material.dart';
import 'package:calulator/Calculator.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var firstNumber =TextEditingController();
  var secondNumber=TextEditingController();
  String result="";

  void Add()async{
    setState(() {
      var first=int.parse(firstNumber.text);
      var second=int.parse(secondNumber.text);
      result=(first+second).toString();
      print(result);
    });
  }
  void Minus()async{
    setState(() {
      var first=int.parse(firstNumber.text);
      var second=int.parse(secondNumber.text);
      result=(first-second).toString();
      print(result);
    });
  }
  void Multi()async{
    setState(() {
      var first=int.parse(firstNumber.text);
      var second=int.parse(secondNumber.text);
      result=(first*second).toString();
      print(result);
    });
  }
  void Div()async{
    setState(() {
    var first=int.parse(firstNumber.text);
    var second=int.parse(secondNumber.text);
    result=(first/second).toString();
    print(result);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff154c79),
        centerTitle: true,
        title:Text('Calculator',style:TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 20),),

      ),
 body:
 Column(
   children: [
     SizedBox(height: 30,),
     TextField(
       keyboardType:TextInputType.text,
             controller: firstNumber,
             decoration: InputDecoration(
               hintText:('Enter First Number'),
             border: OutlineInputBorder(),
               labelText:'Enter First Number',
             ),
     ),
    SizedBox(height: 20,),
    TextField(
    keyboardType:TextInputType.text,
    controller: secondNumber,
    decoration: InputDecoration(
    hintText:('Enter Second Number'),
    border: OutlineInputBorder(),
    labelText:'Enter Second Number',
     )
    ),
     SizedBox(height:20),
     Row(
       mainAxisAlignment: MainAxisAlignment.start,
  children: [
    SizedBox(width: 30,height: 20),
    ElevatedButton(onPressed:(){Add();},
        child:
    Text('Add',style: TextStyle(color:Colors.white,fontSize: 16),),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(140,40),
          backgroundColor: Color(0xff154c79),
        ),
    ),
    SizedBox(height:30,width: 30,),
    ElevatedButton(onPressed:(){Minus();},
        child:
        Text('Minus',style: TextStyle(color: Colors.white,fontSize: 16),),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(140, 40),
        backgroundColor: Color(0xff154c79),
      ),
    ),
    ]
     ),
   SizedBox(height:20),
   Row(
     mainAxisAlignment: MainAxisAlignment.start,
     children: [
       SizedBox(height: 20,width: 30,),
       ElevatedButton(onPressed:(){Multi();},
           child:
           Text('Multi',style: TextStyle(color: Colors.white,fontSize:16),),
         style: ElevatedButton.styleFrom(
           minimumSize:Size (140,40),
           backgroundColor: Color(0xff154c79),
         )
       ),
       SizedBox(height: 20,width: 30,),
       ElevatedButton(onPressed:(){Div();},
           child:
           Text('Div',style: TextStyle(color: Colors.white,fontSize:16),),
           style: ElevatedButton.styleFrom(
             minimumSize:Size (140,40),
             backgroundColor: Color(0xff154c79),
           )
       ),
       ],
   ),
       SizedBox(height: 20,),
       Row(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           SizedBox(height: 20,width: 30,),
           ElevatedButton(onPressed:(){},
               child:
               Text('Square Root',style: TextStyle(color: Colors.white),),
             style: ElevatedButton.styleFrom(
               minimumSize: Size(300, 40),
               backgroundColor:Color(0xff154c79),
             )
           ),
         ],
       ),
        SizedBox(height: 30,width: 30,),
     Text('result :$result',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff154c79)),),
   ],
 ),
    );
  }
}
