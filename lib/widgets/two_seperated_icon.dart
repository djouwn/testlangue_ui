// ignore: unused_import


import 'package:flutter/material.dart';
import 'package:test_langue_ui/colors/colors.dart';
import 'package:test_langue_ui/pages/notifications.dart';
import 'package:test_langue_ui/widgets/back_arrow.dart';

class TwoSeperatedIcon extends StatelessWidget {
  const TwoSeperatedIcon({Key? key, required this.tutornale}) : super(key: key);
final String tutornale;
  @override
  Widget build(BuildContext context) {
    return 
    SafeArea(child:Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children:[
       const SizedBox(height: 20,),
      
    Row(
    
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
   
      const BacktoLast(goback: goback),
 Text(tutornale,style: const TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          color: AppColors.blueofgradient3,
        ),),
        GestureDetector(child:
const Icon(Icons.notifications),onTap: ()=>{
   Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const NotificationW() , fullscreenDialog: false),
      ),

   },),
 
     ],
)]));

  }}