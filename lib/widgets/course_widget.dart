import 'package:flutter/material.dart';
import 'package:test_langue_ui/colors/colors.dart';

class CourseWidget extends StatelessWidget {
  final String image;
  final String skill;
  final String author;
final Function ? navigatetodetails;
  const CourseWidget({Key? key, required this.image, required this.skill, required this.author, required String content,  this.navigatetodetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildCourse(),
          const SizedBox(width: 20),
          _buildCourse(),
          const SizedBox(width: 20), 
          _buildCourse(),
         
          const SizedBox(width: 20), 
          _buildCourse(),
        ],
      ),
    );
  }

  Widget _buildCourse() {
    return 
    Container(
      width: 250,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: AppColors.coursewidget,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 150,
            child: Image.asset(
             image,
              fit: BoxFit.cover, 
            ),
          ),
          const SizedBox(height: 10), 
           Text(
            skill,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color:AppColors.bluebutton,
            ),
          ),
           Text(
            author,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
