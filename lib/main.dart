import 'package:get_it/get_it.dart';
import 'package:myapp/week06/calendar_scheduler/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:myapp/week06/calendar_scheduler/database/drift_database.dart';
import 'package:get_it/get_it.dart';

void main() async {
  // 플러터 프레임워크가 준비될 때까지 대기
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting(); // intl 패키지 초기화(다국어화)

  final database = LocalDatabase(); // db 변수 생성

  GetIt.I.registerSingleton<LocalDatabase>(database); // 생성된 db변수를 전역객체로 선언. 이러면 파일마다 객체생성 필요 x

  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}