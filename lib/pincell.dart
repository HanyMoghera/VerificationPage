import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class pinCell extends StatefulWidget {
  String? cellname ='';
  pinCell(this.cellname);
  @override
  State<pinCell> createState() => _pinCellState();
}

class _pinCellState extends State<pinCell> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Color.fromRGBO(217,217,217,255),
      child: SizedBox(
        height: 30,
        width: 30,
        child: TextFormField(
          onChanged: (value){
            if(value.length == 1){
              FocusScope.of(context).nextFocus();
            }
          },
          onSaved: ($cellname){

          },
          decoration: const InputDecoration(hintText: "0"),
          style: Theme.of(context).textTheme.headlineLarge,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
        ),

      ),
    );
  }
}
