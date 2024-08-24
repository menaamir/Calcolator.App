import 'package:flutter/material.dart';


class calcbuttom extends StatelessWidget {
  String text;
  Function onButtomClick;
  calcbuttom({required this.text, required this.onButtomClick});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
            onPressed: (){
              onButtomClick(text);
            },
            child: Text(text,
              style: TextStyle(
                fontSize: 30
              ),
            )));

  }
}
