import 'package:flutter/material.dart';
import 'package:task_list_item/util.dart';

class MyVerticalDivider extends StatelessWidget {
  const MyVerticalDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: SizedBox(
        height: 100,
        width: 2,
        child: Padding(
          padding: EdgeInsets.only(top: 4,bottom: 4),
          child: ColoredBox(color: Util.secondaryDarkColor,),
        ),
      ),
    );
  }
}
