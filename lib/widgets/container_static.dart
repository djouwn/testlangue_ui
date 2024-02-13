import 'package:flutter/material.dart';
import 'package:test_langue_ui/colors/colors.dart';
import 'package:test_langue_ui/widgets/text_widget.dart';

class MoodyGradient extends StatelessWidget {
  const MoodyGradient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment(0.3, 1),
          colors: [
          AppColors.blueofgradient3,
           
           Color(0xFF003FFF),
            
            AppColors.blueofgradient2,
          ],
          tileMode: TileMode.mirror,
        ),
      ),
      child: Stack(
        children: [
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // Adjusted alignment
              children: [
        
                MyTextWidget(
                  text: 'Be the Champion of each Course',
                  size: 22.0,
                  color: AppColors.whiteofgradeint,
                ),
                
              ],
            ),
          ),
          Positioned(
            left: 100.0,
            top: 25.0,
            child: Image.asset(
              'assets/images/teacher.png',width: 300,height: 300,
            ),
          ),
         
        ],
      ),
    );
  }
}
