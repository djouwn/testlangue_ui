import 'package:flutter/material.dart';
import 'package:test_langue_ui/widgets/checkbox_role.dart';

class CheckboxRoleAligned extends StatelessWidget {
  const CheckboxRoleAligned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  CheckboxRole(sidetext: 'As Student',),
  CheckboxRole(sidetext: 'As Tutor',),
  ],
);

  }}