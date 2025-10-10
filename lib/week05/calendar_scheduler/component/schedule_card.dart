import 'package:myapp/week05/calendar_scheduler/const/colors.dart';
import 'package:flutter/material.dart';
class ScheduleCard extends StatelessWidget{
  final int startTime;
  final int endTime;
  final String content;

  const ScheduleCard({
    required this.startTime,
    required this.endTime,
    required this.content,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    )
}
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
         '${startTime.toString().padLeft(2, '0')}:00',
         style: textStyle,
        ),
        Text(
          // 숫자가 두자릿수가 안 되면 0으로 채워주기
         '${startTime.toString().padLeft(2, '0')}:00',
         style: textStyle.copyWith(
          fontSize: 10.0,
         ),
        ),
      ],
    );
  }
}

// _Time 위젯 바로 아래에 작성
class _Content extends StatelessWidget{
  final String content; // 내용

  const _Content({
    required this.content,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        content,
      ),
    );
  }
}