import 'package:myapp/week05/calendar_scheduler/const/colors.dart';
import 'package:flutter/material.dart';

class _Time extends StatelessWidget{
  final int startTime;
  final int endTime;

  const _Time({
    required this.startTime,
    required this.endTime,
    Key? key,
  }) : super(key: key);

@override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontWeight: FontWeight.w600,
      color: PRIMARY_COLOR,
      fontSize: 16.0,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
         // 숫자가 두자릿수가 안 되면 0으로 채워주기
         '${startTime.toString().padLeft(2, '0'):00}',
         style: textStyle,
        ),
        Text(
          // 숫자가 두자릿수가 안 되면 0으로 채워주기
         '${startTime.toString().padLeft(2, '0'):00}',
         style: textStyle.copyWith(
          fontSize: 10.0,
         ),
        ),
      ],
    );
  }
}