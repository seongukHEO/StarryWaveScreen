import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:starrywave_screen/common/date_format_today.dart';

class WorkingWidget extends StatelessWidget {
  final today = DateTime.now();

  WorkingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(24, 71, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  DateFormatToday(),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    width: 39,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Theme.of(context).colorScheme.onError),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'LV.1',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        )),
                  ),
                  SizedBox(width: 6,),
                  SvgPicture.asset('assets/icon/outlined/battery.svg')
                ],
              ),
              Text("출발! 빨리 끝내고 쉬어볼까요?", style: TextStyle(fontSize: 14, color: Colors.grey),)
            ],
          ),
        ),
      ),
    );
  }
}
