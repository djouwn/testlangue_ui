import 'package:flutter/material.dart';
import 'package:test_langue_ui/colors/colors.dart';
import 'package:test_langue_ui/pages/courses.dart';
import 'package:test_langue_ui/widgets/centered_text.dart';
import 'package:test_langue_ui/widgets/checkbox_role.dart';
import 'package:test_langue_ui/widgets/text_input_fields.dart';
import 'package:test_langue_ui/widgets/two_aligned_checkboxes.dart';

class Login extends StatelessWidget {
  const Login({
    super.key,
    
  });


  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController=TextEditingController();
    final TextEditingController passwordController=TextEditingController();
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    Size screenSize = mediaQueryData.size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return SafeArea(child: 
    Scaffold(
           resizeToAvoidBottomInset:false,
      body:
    Container(
      width:screenWidth,height: screenHeight,
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: [
         
          const SizedBox(height: 90.0,),
          const CenteredText(text: 'User',color: AppColors.bluebutton, fontsize: 30.0,fontweight: FontWeight.bold,),
          const SizedBox(height: 5.0,),
          const CenteredText(text: 'Login',color:AppColors.bluebutton, fontsize: 30.0, fontweight: FontWeight.bold),
           const SizedBox(height: 15.0,),
const CenteredText(text: 'Welcome to Testlangue', color: AppColors.black, fontsize:10.0,fontweight: FontWeight.normal,),
 const SizedBox(height: 15.0,),
 TextInputCustom(hinttext: 'Email', icon: Icons.email, coloricon: AppColors.bluebutton, controller:emailController, obscureText: false ,),  const SizedBox(height: 15.0,),
 const SizedBox(height: 25.0,),
 TextInputCustom(hinttext: 'Password', icon: Icons.password, coloricon: AppColors.bluebutton, controller:passwordController, obscureText: true ,),
  const SizedBox(height: 5.0,),
  const CheckboxRoleAligned(),
   const SizedBox(height: 5.0,),
const Center(
  child: CheckboxRole(
    sidetext: 'As Institution',
  ),
)
,
   const SizedBox(height: 55.0,),
  Container(
    width: 680,
    height: 60,
 
    decoration:  BoxDecoration(
color: AppColors.blueofgradient3,
borderRadius: BorderRadius.circular(8.0),
    ),
  margin: const EdgeInsets.symmetric(horizontal: 20.0),
  child: ElevatedButton(
    
    style: ElevatedButton.styleFrom(
   
      backgroundColor: AppColors.blueofgradient3, 
    ),
    onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const Courses(), fullscreenDialog: false),
      );
    },
    child: const Text('Login',style: TextStyle(color: AppColors.whiteofgradeint,fontSize: 22.0),),
  ),


        ),
        ],

      ),
    )
    ),
    
    );
  }
}
