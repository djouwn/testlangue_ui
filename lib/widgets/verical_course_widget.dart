import 'package:flutter/material.dart';
import 'package:test_langue_ui/colors/colors.dart';


class CourseWidgetVertical extends StatelessWidget {
  final String image;
  final String skill;
  final String author;
  final String content;

  const CourseWidgetVertical({
    Key? key,
    required this.image,
    required this.skill,
    required this.author,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const SizedBox(height: 20),
          _buildCourse(),
          const SizedBox(height: 20),
          _buildCourse(),
           const SizedBox(height: 20),
          _buildCourse(),
           const SizedBox(height: 20),
          _buildCourse(),
           const SizedBox(height: 20),
          _buildCourse(),
          
        ],
      ),
    );
  }

  Widget _buildCourse() {
    return Column(
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
              color: AppColors.bluebutton,
            ),
          ),
        ],
      );
  }
}
