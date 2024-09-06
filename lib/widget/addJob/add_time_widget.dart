import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddTimeWidget extends StatelessWidget {
  const AddTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 72,),
            GestureDetector(
              onTap: (){
                
              },
              child: Container(
                height: 48,
                width: 141,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.black
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("아직 모르겠어요", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Colors.white),),
                ),
              ),
            ),
            SizedBox(height: 56,),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "예상 가능한",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)
                  ),
                  TextSpan(
                      text: " 날짜",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Colors.green)
                  ),
                  TextSpan(
                      text: "나",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)
                  ),
                  TextSpan(
                      text: " 시간",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Colors.green)
                  ),
                  TextSpan(
                      text: "이\n있다면 설정 해보세요",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)
                  ),
                ]
              )
            ),
            SizedBox(height: 12,),
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
                        Text("0000.00.00"),
                        IconButton(
                            onPressed: (){
                              
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
                        Text("없음"),
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
            Expanded(
                child: Column(
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
            )
          ],
        ),
      ),
    );
  }
}
