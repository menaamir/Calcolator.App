import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/calcbuttom.dart';


class calculatorscreen extends StatefulWidget {
  @override
  static const String routNamed= "calculator";

  @override
  State<calculatorscreen> createState() => _calculatorscreenState();
}

class _calculatorscreenState extends State<calculatorscreen> {
  String restext="";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child:
          Container(
              child: Row(
                children: [
                  Text(restext,
                    style: TextStyle(
                      fontSize: 35
                    ),
                  ),
                ],
              ))),


          Expanded(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  calcbuttom(text:"7", onButtomClick: onDigitClick),
                  calcbuttom(text:"8", onButtomClick:onDigitClick),
                  calcbuttom(text:"9", onButtomClick:onDigitClick),
                  calcbuttom(text: "*", onButtomClick:onOperaterclick),

                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  calcbuttom(text:"4", onButtomClick:onDigitClick),
                  calcbuttom(text:"5", onButtomClick:onDigitClick),
                  calcbuttom(text:"6", onButtomClick:onDigitClick),
                  calcbuttom(text:"/", onButtomClick:onOperaterclick),

                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  calcbuttom(text:"1", onButtomClick:onDigitClick),
                  calcbuttom(text:"2", onButtomClick:onDigitClick),
                  calcbuttom(text:"3", onButtomClick:onDigitClick),
                  calcbuttom(text:"+", onButtomClick:onOperaterclick),

                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  calcbuttom(text: ".", onButtomClick:onDigitClick),
                  calcbuttom(text:"0", onButtomClick:onDigitClick),
                  calcbuttom(text: "=", onButtomClick:onEqual),
                  calcbuttom(text:"-", onButtomClick:onOperaterclick),

                ],
              ),
            ),
          ),









        ],
      ),
    );





  }

  void onDigitClick(String text){
    restext += text;
    setState(() {

    });

  }

  String numb= "";
  String operator= "";


  void onOperaterclick(String onClickoperat){

    if(operator.isEmpty){
      numb= restext;
      operator= onClickoperat;
      restext="";



    }
    else {
      String rhs = restext;

      calculate(numb, rhs, operator);
      restext="";
    }

  }
    String calculate(String numb, String rhs , String operator){

      double numb1= double.parse(numb);
      double numb2= double.parse(rhs);
      double res= 0.0;

      if(operator=="+"){
      res=  numb1 + numb2;
      }

     else if(operator=="-"){
        res=  numb1 - numb2;
      }

      else if(operator=="*"){
        res=  numb1 * numb2;
      }

      else if(operator=="/"){
        res=  numb1 / numb2;
      }

      return res.toString();





    }
    void onEqual(String onequal){
    String rhs = restext;
    restext=calculate(numb, rhs, operator);
    numb = "";
    operator = "";
    setState(() {

    });

    }
}






