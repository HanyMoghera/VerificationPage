import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pincell.dart';



class verifypage extends StatefulWidget {
  const verifypage({super.key});

  @override
  State<verifypage> createState() => _verifypageState();
}

class _verifypageState extends State<verifypage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Column(
        children: [
          Container(
            width: 150,
            height: 150,
            margin:EdgeInsets.only(left: 100, right: 100, top: 60),
            child: Image.asset("assets/images/verify.png"),

          ),
          SizedBox(height: 10),
          Text("Verify that is you",
            style: TextStyle(
                color: Color(0xFF000000),
                fontSize: 17,
                fontWeight:FontWeight.bold
            ),),
          SizedBox(height: 10),
          Text("We have sent a code to your email",style: TextStyle(fontSize: 15),),
          Text("Please check your email now!",style: TextStyle(fontSize: 15)),
          SizedBox(height: 60),

          Text("Enter your code here",
            style: TextStyle(
                color: Color(0xFF000000),
                fontSize: 16,
                fontWeight:FontWeight.bold
            ),),
          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(left: 70, right: 70, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                pinCell("pin1"),
                pinCell("pin2"),
                pinCell("pin3"),
                pinCell("pin4"),
              ],
            ),
          ),

          SizedBox(height: 30),

          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Verify',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

        ],
      ) ,

    );
  }
}
