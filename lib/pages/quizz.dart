import 'dart:async';
import 'package:flutter/material.dart';
import 'package:test_langue_ui/colors/colors.dart';
import 'package:test_langue_ui/widgets/button.dart';

class QuizzApp extends StatefulWidget {
  const QuizzApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _QuizzAppState createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  int _seconds = 0;
  late Timer _timer;
  Color containerColorA = Colors.white; 
  Color containerColorB = Colors.white; 
  Color containerColorC = Colors.white; 
  Color containerColorD = Colors.white; 

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Padding(padding: EdgeInsets.all(18.0)),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 18.0),
              width: MediaQuery.of(context).size.width,
              height: 20,
              decoration: BoxDecoration(
                color: AppColors.whiteofgradeint,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(2, 4),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    width: MediaQuery.of(context).size.width * (_seconds / 60),
                    height: 20,
                    decoration: BoxDecoration(
                      color: AppColors.blueofgradient2,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          offset: Offset(2, 4),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25.0),
              child: const Text(
                'Pierre souhaiterait que tu (pouvoir) réviser ta leçon',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w300),
              ),
            ),
            const SizedBox(height: 50,),
            GestureDetector(
              onTap: () {
                setState(() {
                  containerColorA = Colors.blue; 
                });
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 25.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: containerColorA,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'A. Pourra',
                    style: TextStyle(fontSize: 15.0, color: Colors.black,fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                setState(() {
                  containerColorB = Colors.blue; 
                });
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 25.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: containerColorB,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'B. Example',
                    style: TextStyle(fontSize: 15.0, color: Colors.black,fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                setState(() {
                  containerColorC = Colors.blue; 
                });
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 25.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: containerColorC,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'C. Pourrait',
                    style: TextStyle(fontSize: 15.0, color: Colors.black,fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                setState(() {
                  containerColorD = Colors.blue; 
                });
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 25.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: containerColorD,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'D. Peut',
                    style: TextStyle(fontSize: 15.0, color: Colors.black,fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
             const SizedBox(height: 20.0),
              CenteredButton('s', navigateto: (){
 Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const QuizzApp(),
                                  fullscreenDialog: false,
                                ),
                              );
        }
     
        , color: AppColors.bluebutton, text: 'Next quizz', textcolor: AppColors.blueofgradient1)
          ],
        ),
      ),
    );
  }
}
