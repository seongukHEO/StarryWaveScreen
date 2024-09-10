import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimepickerBottomSheet extends StatefulWidget {
  const TimepickerBottomSheet({super.key});

  @override
  State<TimepickerBottomSheet> createState() => _TimepickerBottomSheetState();
}

class _TimepickerBottomSheetState extends State<TimepickerBottomSheet> {
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 335,
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
              Text("시간 선택", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),),
              TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("선택", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF00C3CC)),)
              ),
            ],
          ),
          SizedBox(height: 66,),
          Expanded(
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.time,
                use24hFormat: false,
                initialDateTime: DateTime.now(),
                onDateTimeChanged: (DateTime newDate){
                  setState(() {
                    selectedTime = TimeOfDay(hour: newDate.hour, minute: newDate.minute);
                  });
                },
              )
          )
        ],
      ),
    );;;
  }
}

