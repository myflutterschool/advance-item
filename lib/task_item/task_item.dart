import 'package:flutter/material.dart';
import 'package:task_list_item/util.dart';
import 'package:avatar_view/avatar_view.dart';

import '../my_vertical_divider.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Item'),
        centerTitle: true,
      ),
      body: _mainBody,
    );
  }

  Widget get _mainBody => Padding(
        padding: const EdgeInsets.all(4.0),
        child: Stack(
          children: [_taskState, _taskItem],
        ),
      );

  Widget get _taskState => Container(
        alignment: Alignment.center,
        height: 120,
        width: 30,
        decoration: const BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(6), bottomRight: Radius.circular(6))),
        child: const RotatedBox(
          quarterTurns: 1,
          child: Text(
            'Not Started',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      );

  Widget get _taskItem => Container(
        height: 120,
        margin: const EdgeInsets.only(right: 26),
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: Util.primaryColor, borderRadius: BorderRadius.circular(6)),
        child: Row(
          children: [
            _taskImage,
            const SizedBox(
              width: 4,
            ),
            Expanded(child: _taskInformation)
          ],
        ),
      );

  Widget get _taskImage => AvatarView(
        radius: 35,
        borderColor: Util.primaryLightColor,
        avatarType: AvatarType.RECTANGLE,
        imagePath: 'lib/assets/images/flutter.png',
      );

  Widget get _taskInformation => Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _taskTitle,
                _taskDateTime,
                _taskExecutor,
              ],
            ),
          ),
          const MyVerticalDivider(),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _tag,
                _smallVerticalSpacer,
                _buttons('ducumentation', () { }),
                _smallVerticalSpacer,
                _buttons('description', () { }),
                _smallVerticalSpacer,
                _buttons('attachment', () { })
              ],
            ),
          )
        ],
      );

  Widget get _smallVerticalSpacer=>const SizedBox(height: 8,);

  Widget _buttons(final String label, VoidCallback onTap) => GestureDetector(
    onTap: onTap,
    child: Text(
          label,
          style: TextStyle(color: Util.secondaryLightColor),
        ),
  );

  Widget get _tag => Align(
    alignment: Alignment.centerLeft,
    child: Text(
          'force#',
          style: TextStyle(color: Util.secondaryDarkColor),
        ),
  );

  Widget get _taskExecutor => Card(
        color: Util.primaryLightColor,
        child: Row(
          children: [
            _executorImage,
            const SizedBox(
              width: 8,
            ),
            _executorName
          ],
        ),
      );

  Widget get _executorName => Text(
        'Ehsan Fallahi',
        style: TextStyle(color: Util.secondaryLightColor),
      );

  Widget get _executorImage => AvatarView(
        radius: 15,
        borderColor: Util.primaryLightColor,
        imagePath: 'lib/assets/images/businessman.png',
      );

  Widget get _taskTitle => const Text(
        'Login Design',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      );

  Widget get _taskDateTime => Row(
        children: [
          _dateTime('11/19/2021', '08:00'),
          Icon(
            Icons.arrow_forward_ios,
            color: Util.secondaryDarkColor,
          ),
          _dateTime('11/25/2021', '17:00'),
        ],
      );

  Widget _dateTime(final String date, final String time) {
    return Column(
      children: [
        Text(
          date,
          style: TextStyle(color: Util.secondaryDarkColor, fontSize: 12),
        ),
        Text(
          time,
          style: TextStyle(color: Util.secondaryDarkColor, fontSize: 12),
        ),
      ],
    );
  }
}
