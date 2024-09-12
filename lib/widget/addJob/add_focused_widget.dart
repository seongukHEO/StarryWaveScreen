import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starrywave_screen/provider/addWork/selectFocus_provider.dart';

class AddFocusedWidget extends ConsumerWidget {
  const AddFocusedWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final checkState = ref.watch(selectFocusProvider);

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
                    text: "집중",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24, color: Colors.green)
                  ),
                  TextSpan(
                      text: "이 많이\n필요한 일인가요?",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24)
                  ),
                ]
              )
            ),
            SizedBox(height: 12,),
            Text.rich(
                TextSpan(
                    children: [
                      TextSpan(
                          text: "'경영시험 공부하기'",
                          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Colors.blueAccent)
                      ),
                      TextSpan(
                          text: "(은)는 집중이 필요한 일인가요?",
                          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14)
                      ),
                    ]
                )
            ),
            SizedBox(height: 54,),
            GestureDetector(
              onTap: (){
                ref.read(selectFocusProvider.notifier).updateFocus(true);
              },
              child: Container(
                height: 48,
                width: 212,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(),
                  color: checkState
                    ? Colors.black
                    : Colors.white
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('네! 집중해야 끝낼 수 있어요', style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.w700,
                      color: checkState
                      ? Colors.white
                      : Colors.black
                  ),),
                ),
              ),
            ),
            Text("ex) 심리학 과제하기, 코딩 공부하기,,,", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10, color: Colors.grey),),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                ref.read(selectFocusProvider.notifier).updateFocus(false);
              },
              child: Container(
                height: 48,
                width: 270,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: checkState
                      ? Colors.white
                      : Colors.black
                    ,
                    border: Border.all(color: Colors.grey)
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('아니요, 조금만 집중해도 할 수 있어요', style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w700,
                      color: checkState
                          ? Colors.black
                          : Colors.white
                  ),),
                ),
              ),
            ),
            Text("ex) 빨래(청소, 설거지)하기, 카톡(메일, 문자)답장하기", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10, color: Colors.grey),),
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
                                child: Text("추가하기", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),)),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
