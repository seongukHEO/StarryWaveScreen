import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:starrywave_screen/widget/dowork/focus/focus_list_widget.dart';

class FocusWidget extends StatelessWidget {
  const FocusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade200,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text('0 개', style: TextStyle(color: Colors.grey),),
            ),
            Expanded(
                child: FocusListWidget()
            )
          ],
        ),
      )
    );
  }
}
