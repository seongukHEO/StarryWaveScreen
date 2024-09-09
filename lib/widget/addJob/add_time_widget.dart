import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:starrywave_screen/common/calendar/calendar_bottom_sheet.dart';
import 'package:starrywave_screen/common/dialog/add_work_cancel_dialog.dart';
import 'package:starrywave_screen/provider/addWork/checkbox_provider.dart';
import 'package:starrywave_screen/widget/addJob/state_Grid_widget.dart';

class AddTimeWidget extends ConsumerWidget {
  const AddTimeWidget({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final isChecked = ref.watch(checkBoxProvider);

    void _showDialog()async{
      showDialog(context: context, builder: (context){
        return AddWorkCancelDialog();
      });
    }

    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(24, 0, 24, 10),
        margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "이 일은 ",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24)),
                  TextSpan(
                      text: "언제",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24, color: Colors.green)),
                  TextSpan(
                      text: "까지\n하면 좋은 일인가요?",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24)),
                ]
              )
            ),
            SizedBox(height: 12,),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "'경영시험 공부하기'",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Color(0xff5A78FF))
                  ),
                  TextSpan(
                      text: "(은)는 언제까지 해야하나요?",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Colors.grey)
                  ),
                ]
              )
            ),
            SizedBox(height: 34,),
            Row(
              children: [
                Checkbox(
                    value: isChecked,
                    onChanged: (bool? value){
                      ref.read(checkBoxProvider.notifier).updateCheckBox(value ?? true);
                      if (isChecked == false) {
                        _showDialog();
                      }
                    },
                  shape: CircleBorder(),
                  checkColor: Colors.green,
                  activeColor: Colors.white,
                ),
                Text("모르겠음 - 미정", style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: isChecked
                      ? Colors.green
                      : Colors.grey
                ),)
              ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    height: 48,
                    margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.shade200
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("0000.00.00", style: TextStyle(
                          color: isChecked
                              ? Colors.grey
                              : Colors.black
                        ),),
                        IconButton(
                            onPressed: (){
                              showModalBottomSheet(
                                  context: context,
                                  isDismissible: false, // 바깥 클릭해도 닫히지 않음
                                  enableDrag: false,    // 스와이프로도 닫히지 않음
                                  builder: (BuildContext context){
                                return CalendarBottomSheet();
                              },
                                isScrollControlled: true
                              );
                            },
                            icon: SvgPicture.asset('assets/icon/bold/calendar_bold.svg',
                              colorFilter: ColorFilter.mode(Color(0xFF8FA3FF), BlendMode.srcIn),)
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 48,
                    padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    margin: EdgeInsets.fromLTRB(4, 0, 0, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade200
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("없음", style: TextStyle(
                            color: isChecked
                                ? Colors.grey
                                : Colors.black
                        ),),
                        IconButton(
                            onPressed: (){

                            },
                            icon: SvgPicture.asset('assets/icon/bold/clock_circle_bold.svg',)
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 48,),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("만약 못 끝냈을 때 예상되는 나의 모습은?", style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16, color: isChecked
                        ? Colors.grey
                        : Colors.black
                    ),),
                    SizedBox(height: 13,),
                    StateGridWidget()
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: GestureDetector(
                        onTap: (){},
                        child: Container(
                          height: 56,
                          margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(),
                            color: Colors.white
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text("이전", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),)),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: GestureDetector(
                        onTap: (){},
                        child: Container(
                          height: 56,
                          margin: EdgeInsets.fromLTRB(4, 0, 0, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text("확인", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),)),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
