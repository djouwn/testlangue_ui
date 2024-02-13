import 'package:flutter/material.dart';
import 'package:test_langue_ui/colors/colors.dart';
import 'package:test_langue_ui/pages/modules.dart';
import 'package:test_langue_ui/pages/paiement_page.dart';
import 'package:test_langue_ui/pages/pay_asyou_go.dart';
import 'package:test_langue_ui/widgets/back_arrow.dart';
import 'package:test_langue_ui/widgets/button.dart';
import 'package:test_langue_ui/widgets/text_widget.dart';
class CourseDetails extends StatelessWidget {
  final bool isFree;
  const CourseDetails({Key? key, required this.isFree}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void goback() {
      Navigator.of(context).pop();
    }

    List<Widget> buildButtons() {
      if (isFree) {
        return [
          CenteredButton(
            's',
            navigateto: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PaiementPage(),
                  fullscreenDialog: false,
                ),
              );
            },
            color: AppColors.whiteofgradeint,
            text: 'Buy Now',
            textcolor: AppColors.bluebutton,
          ),
          const SizedBox(height: 5.0),
          const Center(
            child: Text('Or contact us to facilitate payment!'),
          ),
          const SizedBox(height: 5.0),
          CenteredButton(
            's',
            navigateto: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>  PayAsYouGo(),
                  fullscreenDialog: false,
                ),
              );
            },
            color: AppColors.bluebutton,
            text: 'Pay as you go',
            textcolor: AppColors.whiteofgradeint,
          ),
        ];
      } else {
        return [
          CenteredButton(
            's',
            navigateto: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Modules(),
                  fullscreenDialog: false,
                ),
              );
            },
            color: AppColors.whiteofgradeint,
            text: 'Enroll Now',
            textcolor: AppColors.bluebutton,
          ),
        ];
      }
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BacktoLast(goback: goback),
                    const MyTextWidget(
                        text: 'Course Details',
                        size: 20.0,
                        color: AppColors.bluebutton),
                    const Icon(Icons.notifications),
                  ],
                ),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'This course is released by Mehdi Mensi\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      WidgetSpan(
                          child: Image.asset('assets/images/coursewidget.jpg')),
                      const TextSpan(
                        text: ' Artificial Intelligence by mehdi mensi \n',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const TextSpan(
                        text: 'This course is paid but on discount\n',
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Colors.blue,
                        ),
                      ),
                      const TextSpan(
                        text: 'Instead of ',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Colors.red,
                        ),
                      ),
                      const TextSpan(
                        text: '500dt',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 14,
                          color: Colors.red,
                        ),
                      ),
                      const TextSpan(
                        text: ' Pay 250dt \n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.green,
                        ),
                      ),
                      const TextSpan(
                        text: '41 videos\n ',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      const TextSpan(
                        text: 'More than 25 quizzes',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const    Text('Purpose of course  :',style: TextStyle(color: AppColors.bluebutton,fontSize:16.0,fontWeight: FontWeight.w700),),
           const    Text('In this course you will learn a lot ',style: TextStyle(color: AppColors.black,fontSize:13,fontWeight: FontWeight.w500),),
          
             const    Text('Requirements of Course :',style: TextStyle(color: AppColors.bluebutton,fontWeight: FontWeight.w700,fontSize:16.0,),),
           const    Text('In this course you need to know nltk library , opencv ',style: TextStyle(color: AppColors.black,fontWeight: FontWeight.w500,fontSize:13,),),
          
                const SizedBox(height: 50.0,),
                ...buildButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}