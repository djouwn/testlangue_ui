import 'package:flutter/material.dart';
import 'package:test_langue_ui/colors/colors.dart';
import 'package:test_langue_ui/widgets/text_input_fields.dart';

class PayAsYouGo extends StatelessWidget {
  final Color color;
  final Widget? child;
  final TextEditingController emailController = TextEditingController();

  PayAsYouGo({
    Key? key,
    this.color = const Color(0xFF2DBD3A),
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Paiement Page',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.bluebutton),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications,),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')),
                );
              },
            ),
          ],
        ),
        body:
        Padding(padding: const EdgeInsets.all(22.0) ,       child:Column(children:[
         TextInputCustom(
          hinttext: 'Name',
          icon: Icons.person_2,
          coloricon: AppColors.bluebutton,
          controller: emailController, obscureText: false,
        ),
        const SizedBox(height: 10,),
         TextInputCustom(
          hinttext: 'Paiement',
          icon: Icons.paid_outlined,
          coloricon: AppColors.bluebutton,
          controller: emailController, obscureText: false,
        ),
           
      ]),
    )));
  }
}