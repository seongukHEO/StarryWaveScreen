import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddTitleWidget extends StatefulWidget {
  AddTitleWidget({super.key});

  @override
  State<AddTitleWidget> createState() => _AddTitleWidgetState();
}

class _AddTitleWidgetState extends State<AddTitleWidget> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _textEditingController.dispose();
  }

  //Todo Dev 모드 보고 수정
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(24, 0, 24, 10),
        margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: "해야하는 일의\n",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24)),
              TextSpan(
                  text: "제목",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.green,
                      fontSize: 24)),
              TextSpan(
                  text: "을 작성해주세요!",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24)),
            ])),
            SizedBox(
              height: 10,
            ),
            Text(
              "ex) 심리학 과제하기, 빨래하기, 코딩 공부하기...",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            SizedBox(
              height: 72,
            ),
            Container(
              height: 48,
              //width: 358,
              margin: EdgeInsets.fromLTRB(0, 30, 24, 0),
              child: TextField(
                controller: _textEditingController,
                style: TextStyle(fontSize: 12),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide.none),
                    hintText: "할 일의 제목을 작성해보세요!",
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 12)),
                cursorColor: Colors.black,
              ),
            ),
            Text(
              " *20자 이내로 작성해주세요.",
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:[
                    GestureDetector(
                      child: Container(
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Align(
                            alignment: Alignment.center ,
                            child: Text("다음", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),)
                        ),
                      ),
                      onTap: (){

                      },
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
