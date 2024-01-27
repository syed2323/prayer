import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  DateTime now = DateTime.now();
  String formattedTime = DateFormat('hh:mm:ss a').format(now);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible(
              flex: 1,
              child: Container(
                //color: Colors.cyan,
                child: Center(
                  child: Image.asset(
                    'assets/images/intro.jpg', // Adjust the path based on your asset location
                    width: 200,
                    height: 900,
                    fit: BoxFit.cover, // Adjust the BoxFit property as needed
                  ),
                ),
              )),
          Flexible(
              flex: 2,
              child: Container(
                color: Color(0xFF05182B),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Colors.deepOrange,
                          child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Text(
                                '   ${now.hour}:${now.minute} ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '   ${now.year}-${now.month}-${now.day}',
                                style: TextStyle(fontSize: 20),
                              ),


                            ],
                          ),
                        )),
                    Flexible(
                        flex: 2,
                        child: Container(
                          color: Colors.orange,
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.cyan,
                        )),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
