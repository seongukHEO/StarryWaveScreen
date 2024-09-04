import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FocusWidget extends StatelessWidget {
  const FocusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text('0 개', style: TextStyle(color: Colors.grey),),
            ),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icon/outlined/goal.svg'),
                    SizedBox(height: 20,),
                    Text("아직 추가된 할 일이 없어요!\n아래 버튼으로 새 할 일을 추가해보세요", style: TextStyle(color: Colors.grey),)
                  ],
                )
            )
          ],
        ),
      )
    );
  }
}
