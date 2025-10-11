import 'package:myapp/week06/calendar_scheduler/model/schedule.dart';
import 'package:drift/drift.dart';

// private 값까지 불러올 수 있음
part 'drift_database.g.dart'; // part 파일 지정

@DriftDatabase(
  tables: [
    Schedules,
  ],
)
class LocalDatabase extends _$LocalDatabase {
  // code generation으로 생성할 클래스 상속
  Stream<List<Schedules>> watchSchedules(DateTime date) =>
  // 데이터를 조회하고 변화 감지
     (select(schedules)..where((tbl) => tbl.date.equals(date))).watch();
  
  Future<int> createSchedule(SchedulesCompanion data) =>
   into(Schedules).insert(data);
  
  Future<int> removeSchedule(int id) =>
  (delete(schedules)..where((tbl) => tbl.id.equals(id))).go();

  
}