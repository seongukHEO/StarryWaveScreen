import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FocusListWidget extends StatelessWidget {
  const FocusListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index){
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
            padding: EdgeInsets.fromLTRB(28, 24, 28, 32),
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            height: 140,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("게임 인물학 과제 제출하기", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                    SizedBox(height: 14,),
                    Container(
                      width: 111,
                      height: 24,
                      decoration: BoxDecoration(
                        //색 지정
                        color: Color(0xFFFFDFDB),
                        borderRadius: BorderRadius.circular(4)
                      ),
                      child: Align(alignment: Alignment.center ,child: Text("오늘까지 12:30pm", style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.error),)),
                    )
                  ],
                ),
                Container(
                  height: 56,
                  width: 56,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                        backgroundColor: Colors.grey.shade200,
                        strokeWidth: 3,
                        valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF9CD900)),
                      ),
                      Center(
                        child: IconButton(
                          onPressed: (){},
                          icon: SvgPicture.asset('assets/icon/bold/play_bold.svg'),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        }
    );
  }
}
