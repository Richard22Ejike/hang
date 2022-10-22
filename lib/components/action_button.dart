// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class ActionButton extends StatelessWidget {
  ActionButton({
    Key? key,
    required this.onPress,
    required this.buttonTitle,
  }) : super(key: key);

  final VoidCallback ? onPress;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(style: ElevatedButton.styleFrom(
       elevation: 3.0,
       onPrimary:kActionButtonColor ,
      onSurface: kActionButtonHighlightColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
     
      onPressed: onPress,
      child: Text(
        buttonTitle,
        style: kActionButtonTextStyle,
      ),
    );
  }
}
