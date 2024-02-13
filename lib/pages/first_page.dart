import 'package:flutter/material.dart';
import 'package:test_langue_ui/colors/colors.dart';
import 'package:test_langue_ui/pages/second_page.dart';
import 'package:test_langue_ui/widgets/background.dart';
import 'package:test_langue_ui/widgets/button.dart';
import 'package:test_langue_ui/widgets/centered_text.dart';
import 'package:test_langue_ui/widgets/text_widget.dart';
import 'package:test_langue_ui/widgets/centered_image.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 25.0, right: 60.0), 
          child: MyTextWidget(text: 'Learning Can be Funny ', size: 35.0,color: AppColors.whiteofgradeint,),
        ),
        const CenteredImage(imagePath: 'assets/images/joinus.png'),
     
        const CenteredText(text: 'With Testlangue',color: Colors.white, fontsize: 20.0, fontweight:FontWeight.normal ,),
        const SizedBox(height: 100.0),
        CenteredButton(

 '',
          navigateto: () {
            navigatetosecondscreen(context);
          }, color:  AppColors.blueofgradient1, text: 'Join Us', textcolor: AppColors.bluebutton,
        ),
      ],
    );
  }

  void navigatetosecondscreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const SecondPage(), fullscreenDialog: false),
    );
  }
}
