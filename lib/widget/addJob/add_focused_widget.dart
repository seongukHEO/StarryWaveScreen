import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddFocusedWidget extends StatelessWidget {
  const AddFocusedWidget({super.key});

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
          ],
        ),
      ),
    );
  }
}
