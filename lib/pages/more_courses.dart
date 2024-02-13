import 'package:flutter/material.dart';
import 'package:test_langue_ui/colors/colors.dart';
import 'package:test_langue_ui/pages/course_details.dart';
import 'package:test_langue_ui/widgets/verical_course_widget.dart';

class MoreCourses extends StatelessWidget {
  const MoreCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More Courses'),
      ),
      body: 
      SingleChildScrollView(child:
      

         Column(
        
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Browse Our Courses',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500,color:AppColors.bluebutton),),
          GestureDetector(child:
            const CourseWidgetVertical(
              image: 'assets/images/joinus.png',
              skill: 'Artificial Intelligence',
              author: 'Mehdi Mensi',
              content: 'This course will teach you nltk',
            ),
            onTap: (){
               Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const CourseDetails(isFree: true),
                                  fullscreenDialog: false,
                                ),
                              );
            },
            ),
          ],
        ),
      ),
    );
  }
}