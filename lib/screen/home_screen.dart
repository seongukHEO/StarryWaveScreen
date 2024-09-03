import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:starrywave_screen/provider/home/home_provider.dart';
import 'package:starrywave_screen/widget/home/my_page_widget.dart';
import 'package:starrywave_screen/widget/home/record_widget.dart';
import 'package:starrywave_screen/widget/home/working_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectIndex = ref.watch(selectedIndexProvider);
    return Scaffold(
      body: IndexedStack(
        index: selectIndex,
        children: [
          WorkingWidget(),
          RecordWidget(),
          MyPageWidget()
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index){
          ref.read(selectedIndexProvider.notifier).state = index;
        },
        selectedIndex: selectIndex,
        destinations: [
          NavigationDestination(
              icon: selectIndex == 0
                ? SvgPicture.asset('assets/icon/bold/stopwatch_play_bold.svg')
                : SvgPicture.asset('assets/icon/outlined/stopwatch_play.svg'),
              label: "할 일"
          ),
          NavigationDestination(
              icon: selectIndex == 1
                ? SvgPicture.asset('assets/icon/bold/calendar_record_bold.svg')
                : SvgPicture.asset('assets/icon/outlined/calendar_record.svg'),
              label: "기록"
          ),
          NavigationDestination(
              icon: selectIndex == 2
                ? SvgPicture.asset('assets/icon/bold/user_circle_bold.svg')
                : SvgPicture.asset('assets/icon/outlined/user_circle.svg'),
              label: "마이"
          ),
        ],
      ),
      floatingActionButton: switch(selectIndex){
        0 => FloatingActionButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          backgroundColor: Theme.of(context).colorScheme.onPrimary,
          child: SvgPicture.asset('assets/icon/bold/add_file_bold.svg', colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),),
          onPressed: (){

          },
        ),
        _ => Container()
      },
    );
  }
}
