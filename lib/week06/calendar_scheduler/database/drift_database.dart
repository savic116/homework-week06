import 'package:myapp/week06/calendar_scheduler/model/schedule.dart';
import 'package:drift/drift.dart';

// private 값까지 불러올 수 있음
part 'drift_database.g.dart'; // part 파일 지정

@DriftDatabase(
  tables: [
    Schedules,
  ],
)
class LocalDa