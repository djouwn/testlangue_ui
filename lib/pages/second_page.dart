import 'package:flutter/material.dart';
import 'package:test_langue_ui/colors/colors.dart';
import 'package:test_langue_ui/pages/third_page.dart';
import 'package:test_langue_ui/widgets/background.dart';
import 'package:test_langue_ui/widgets/button.dart';
import 'package:test_langue_ui/widgets/centered_text.dart';
import 'package:test_langue_ui/widgets/text_widget.dart';
import 'package:test_langue_ui/widgets/centered_image.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 25.0, right: 40.0), 
          child: MyTextWidget(text: 'Join Us As Tutor', size: 35.0, color: AppColors.whiteofgradeint,),
        ),
        const CenteredImage(imagePath: 'assets/images/teacher.png'),

        const CenteredText(text: 'Improve your income with us ',color: AppColors.blueofgradient1, fontsize: 20.0, fontweight: FontWeight.w300,),
        const SizedBox(height:100.0),
        CenteredButton(
           'Join Us',
          navigateto: () {
            navigatetothirdscreen(context);
          }, color: AppColors.blueofgradient1, text: 'Continue', textcolor: AppColors.bluebutton,
        ),
      ],
    );
  }

  void navigatetothirdscreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const ThirdPage(), fullscreenDialog: false),
    );
  }
}
