import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NormalWidget extends StatelessWidget {
  const NormalWidget({super.key});

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
              // Expanded(
              //     child:
              // )
            ],
          ),
        )
    );
  }
}
