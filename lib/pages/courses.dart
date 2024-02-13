import 'package:flutter/material.dart';
import 'package:test_langue_ui/colors/colors.dart';
import 'package:test_langue_ui/pages/course_details.dart';
import 'package:test_langue_ui/pages/first_page.dart';
import 'package:test_langue_ui/pages/more_courses.dart';
import 'package:test_langue_ui/widgets/button.dart';
import 'package:test_langue_ui/widgets/container.dart';
import 'package:test_langue_ui/widgets/container_static.dart';
import 'package:test_langue_ui/widgets/course_widget.dart';
import 'package:test_langue_ui/widgets/navbar.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  String selectedContainer = 'New';
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: AppBar(
        title: const Text('Courses',textAlign: TextAlign.center,),
       ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             
               const Text(
                   'Hi wijdene !',style: TextStyle(fontSize: 25.0,
                  color: Colors.red,),
                  
                ),
                
                const MoodyGradient(
      
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildContainer('New', AppColors.blueofgradient2, AppColors.blueofgradient1),
                      const SizedBox(width: 25.0),
                      _buildContainer('Trendy', AppColors.blueofgradient1, Colors.black),
                      const SizedBox(width: 25.0),
                      _buildContainer('Best Rated', AppColors.blueofgradient2, AppColors.blueofgradient1),
                    ],
                  ),
                ),
                const SizedBox(height: 25.0),
                if (selectedContainer.isEmpty)
                GestureDetector(child:
                  const CourseWidget(
                    image: 'assets/images/coursewidget.jpg',
                    skill: 'Artificial intelligence',
                    author: 'Mehdi Mensi', content: '', 
                  ),
                  onTap: (){
                      Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const CourseDetails(isFree: true,), fullscreenDialog: false),
    );
                  },
                  ),
                
                if (selectedContainer.contains('Trendy'))
                
                 GestureDetector( child: const CourseWidget(
                    image: 'assets/images/teacher.png',
                    skill: 'Artificial intelligence',
                    author: 'Mehdi Mensi', content: '', 
                  ),onTap: (){
                     Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const CourseDetails(isFree: false,), fullscreenDialog: false),
    );

                  },),
                if (selectedContainer.contains('Best Rated'))
                
                 GestureDetector( child:  const CourseWidget(
                    image: 'assets/images/student.png',
                    skill: 'Artificial intelligence',
                    author: 'Mehdi Mensi', content: '',
                  ),onTap: (){
                     Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const CourseDetails(isFree: true,), fullscreenDialog: false),
    );}),
                  
                if (selectedContainer.contains('New'))
               GestureDetector( child:     const CourseWidget(
                    image: 'assets/images/coursewidget.jpg',
                    skill: 'Artificial intelligence',
                    author: 'Mehdi Mensi', content: '', 
                  ),
                  onTap: (){
                     Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const CourseDetails(isFree: false,), fullscreenDialog: false),
    );}),
             
                     CenteredButton('', navigateto:(){ Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const MoreCourses(), fullscreenDialog: false),);}
                       , color: AppColors.whiteofgradeint, text: 'Browse More courses', textcolor: AppColors.bluebutton,),
              const SizedBox(height: 10.0,),
            const BottomNavigationBarExample(),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
void navigatetoallcourses(BuildContext context){
  Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const MoreCourses(), fullscreenDialog: false),
                      );
}
  void navigatetodetails() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const FirstPage(), fullscreenDialog: false),
    );
  }

  Widget _buildContainer(String text, Color containerColor, Color fontColor) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedContainer = text;
          isLoading = true;
        });

        Future.delayed(const Duration(seconds: 2), () {
          setState(() {
            isLoading = false;
          });
        });
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: SmallContainer(
          text: text,
          size: 20.0,
          containercolor: containerColor,
          fontcolor: fontColor, fontweight:FontWeight.normal,
        ),
      ),
    );
  }
}
