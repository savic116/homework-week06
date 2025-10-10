import 'package:flutter/material.dart';
import 'package:myapp/week05/calendar_scheduler/component/main_calendar.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super (key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MainCalendar(),
          ],
        ),
      ),
    );
  }
}