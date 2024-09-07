import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddWorkCancelDialog extends StatelessWidget {
  const AddWorkCancelDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        width: 340,
        height: 218,
        padding: EdgeInsets.fromLTRB(0, 48, 0, 0),
        child: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text.rich(
                      TextSpan(
                          children: [
                            TextSpan(
                                text: "경영시험 공부하기",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700,
                                    color: Colors.green
                                )
                            ),
                            TextSpan(
                                text: " 추가를",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700,
                                    color: Colors.black
                                )
                            ),
                          ]
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text('정말 그만둘까요?', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                    )
                  ],
                )
            ),
            SizedBox(height: 34,),
            Row(
              children: [
                Expanded(
                  flex: 1,
                    child: GestureDetector(
                      onTap: (){},
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
                        height: 56,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all()
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("그만두기", style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600
                          ),),
                        ),
                      ),
                    )
                ),
                Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                        height: 56,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(),
                          color: Colors.black
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("아니요", style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white
                          ),),
                        ),
                      ),
                    )
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

