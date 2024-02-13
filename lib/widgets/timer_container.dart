import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_langue_ui/colors/colors.dart';

class TimerContainer extends StatefulWidget {
  const TimerContainer({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TimerContainerState createState() => _TimerContainerState();
}

class _TimerContainerState extends State<TimerContainer> {
  late Timer _timer;
  int _seconds = 60;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if(_seconds>0){
        _seconds--;
        }
        
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
      
       Container(
        width: double.infinity,
        height: double.infinity,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
        color: Colors.blue,),
        child: Center(
          child: 
          Container(
            color: AppColors.bluebutton,
            height: 8,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            
            child:
          
          Text(
            'Timer: $_seconds seconds',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    )]));
  }
}