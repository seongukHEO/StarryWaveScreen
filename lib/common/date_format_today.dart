import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class DateFormatToday extends StatelessWidget {
  const DateFormatToday({super.key});

  @override
  Widget build(BuildContext context) {
    final String formattedDate = DateFormat('M월 d일 E요일', 'ko_KR').format(DateTime.now());

    return Text(
      formattedDate, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}
