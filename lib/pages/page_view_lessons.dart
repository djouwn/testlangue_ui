import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_langue_ui/colors/colors.dart';
import 'package:test_langue_ui/pages/lessons.dart';
import 'package:test_langue_ui/pages/quizz.dart';
import 'package:test_langue_ui/widgets/button.dart';
import 'package:test_langue_ui/widgets/checkbox_role.dart';

class PageViewLessons extends StatelessWidget {
  const PageViewLessons({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
    
    scrollDirection: Axis.horizontal,
      controller: controller,
      children:   <Widget>[
        const Center(
          child: Lessons(),
        ),
        const Center(
          child: Lessons(),
        ),
        const Center(
          child:Lessons(),
        ),
        Center(
          child:Scaffold(
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[  const CheckboxRole(sidetext: 'Mark As Completed',),
          const SizedBox(height: 50.0,),
        CenteredButton('s', navigateto: (){
 Get.to(const QuizzApp());
        }
      
        , color: AppColors.blueofgradient1, text: 'Go To Quizzes', textcolor: AppColors.bluebutton),
        const SizedBox(height: 50.0,),
        CenteredButton('s', navigateto: (){
 Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const Lessons(),
                                  fullscreenDialog: false,
                                ),
                              );
        }
      
        , color: AppColors.bluebutton, text: 'Come Back to lesson', textcolor: AppColors.blueofgradient1)
        
        ])
        
            
          )
        ),
      ],
    );
  }
}
