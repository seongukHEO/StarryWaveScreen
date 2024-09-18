import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starrywave_screen/provider/addWork/checkbox_provider.dart';
import 'package:starrywave_screen/provider/addWork/grid_provider.dart';

class StateGridWidget extends ConsumerWidget {

  final List<Color> gridSelectedColor = [Color(0xFFFF614C) ,Color(0xFFFFB01A), Color(0xFF8AC000), Color(0xFF00C3CC)];

  final List<String> emoji = ['🥵', '😭', '😚', '😅'];

  final List<String> gridTexts = [
    '    수습불가!!\n내 인생 망할지도',
    '미래의 내가 좀\n많이 힘들지도',
    '여유는 좀 있는데\n끝냈으면 넘 뿌듯!',
    '괜찮아! 다음에\n기회가 있을 수도'
  ];
  StateGridWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = ref.watch(gridStateProvider);
    final isChecked = ref.watch(checkBoxProvider);
    final checkState = ref.read(checkBoxProvider.notifier);

    return Expanded(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.5
          ),
          itemCount: gridTexts.length,
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: (){
                ref.read(gridStateProvider.notifier).toggleSelected(index);
                checkState.updateCheckBox(false);
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(30, 16, 30, 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(width: 3, color: Color(0xFFF1F4F8)),
                  color: isSelected[index] && isChecked == false
                    ? gridSelectedColor[index]
                    : Colors.white
                ),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(emoji[index], style: TextStyle(fontSize: 30,)),
                                Text(gridTexts[index], style: TextStyle(fontWeight: FontWeight.w600)),
                              ],
                            )
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
