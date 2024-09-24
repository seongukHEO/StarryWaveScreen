import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:starrywave_screen/provider/addWork/checkbox_provider.dart';
import 'package:starrywave_screen/provider/addWork/selectDate_provider.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarBottomSheet extends ConsumerWidget{
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime selectDate = ref.watch(selectDateProvider);
    final selectedDateNotifier = ref.read(selectDateProvider.notifier);
    final checkBoxState = ref.read(checkBoxProvider.notifier);

    return Container(
      height: 560,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("취소", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, ),)
              ),
              Text("날짜 선택", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),),
              TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                    checkBoxState.updateCheckBox(false);
                  },
                  child: Text("선택", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF00C3CC)),)
              ),
            ],
          ),
          SizedBox(height: 56,),
          Expanded(
              child: TableCalendar(
                locale: 'ko_KR',
                firstDay: DateTime.utc(1999, 1, 1),
                lastDay: DateTime.utc(2030, 12, 31),
                focusedDay: selectDate,
                selectedDayPredicate: (day){
                  return isSameDay(selectDate, day);
                },
                onDaySelected: (selectDay, focusDay){
                  selectedDateNotifier.updateDate(selectDay);
                },
                calendarFormat: CalendarFormat.month,
                headerStyle: HeaderStyle(
                    titleCentered: true,
                  formatButtonVisible: false,
                  titleTextFormatter: (date, locale){
                    return DateFormat('yyyy.MM', locale).format(date);
                  },
                ),
                calendarStyle: CalendarStyle(
                  selectedDecoration: BoxDecoration(
                    color: Colors.green, // 선택된 날짜의 배경색을 초록색으로 변경
                    shape: BoxShape.circle,
                  ),
                  todayDecoration: BoxDecoration(
                    color: Colors.green.shade200, // 오늘 날짜의 배경색을 파란색으로 유지
                    shape: BoxShape.circle,
                  ),
                ),
              )
          )
        ],
      ),
    );
  }

}