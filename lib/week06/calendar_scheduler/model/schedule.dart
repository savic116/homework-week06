import 'package:drift/drift.dart';

class Schedules extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get contnet => text()();
  DateTimeColumn get date => dateTime()();
  IntColumn get startTime => integer()();
  I

}