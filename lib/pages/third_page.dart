import 'package:flutter/material.dart';
import 'package:test_langue_ui/colors/colors.dart';
import 'package:test_langue_ui/pages/sign_up.dart';
import 'package:test_langue_ui/widgets/background.dart';
import 'package:test_langue_ui/widgets/button.dart';
import 'package:test_langue_ui/widgets/centered_text.dart';
import 'package:test_langue_ui/widgets/text_widget.dart';
import 'package:test_langue_ui/widgets/centered_image.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 50.0, right: 100.0), 
          child: MyTextWidget(text: 'Join Us As Student', size: 32.0, color: AppColors.whiteofgradeint,),
        ),
        const CenteredImage(imagePath: 'assets/images/student.png'),
        const SizedBox(height: 5.0),
        const CenteredText(text: 'Improve your skills with us', color: AppColors.blueofgradient1, fontsize: 20.0, fontweight: FontWeight.normal,),
        const SizedBox(height: 100.0),
        CenteredButton(
          'move',
          navigateto: () {
            navigatetologin(context);
          }, color: AppColors.blueofgradient1, text: 'Continue', textcolor: AppColors.bluebutton, 
        ),
      ],
    );
  }

  void navigatetologin(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => SignUp(), fullscreenDialog: false),
    );
  }
}
