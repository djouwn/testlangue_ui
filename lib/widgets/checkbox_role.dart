import 'package:flutter/material.dart';
import 'package:test_langue_ui/colors/colors.dart';

class CheckboxRole extends StatefulWidget {
  final String sidetext;
  const CheckboxRole({super.key, required this.sidetext});

  @override
  State<CheckboxRole> createState() => _CheckboxRoleState();
}

class _CheckboxRoleState extends State<CheckboxRole> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.white;
    }

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
            checkColor: AppColors.bluebutton,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            side: const BorderSide(color: AppColors.bluebutton),
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Text(widget.sidetext),
        ],
      ),
    );
  }
}
