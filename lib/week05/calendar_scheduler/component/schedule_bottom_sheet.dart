import 'package:flutter/material.dart';
import 'package:myapp/week05/calendar_scheduler/component/custom_text_field.dart';
import 'package:myapp/week05/calendar_scheduler/const/colors.dart';
class ScheduleBottomSheet extends StatefulWidget{
  const ScheduleBottomSheet({Key? key}) : super(key: key);

  @override
  State<ScheduleBottomSheet> createState() => _ScheduleBottomSheetState();
}

class _ScheduleBottomSheetState extends State<ScheduleBottomSheet>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      label: '시작 시간',
                      isTime: true,
                    )
                  )
                ],
              )
            ],
          )
        )
        child: CustomTextField(
          // 시작 시간 텍스트 필드 렌더링
          label: '시작 시간',
        ),
      ),
    );
  }
}