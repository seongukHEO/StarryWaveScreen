import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:starrywave_screen/common/date_format_today.dart';
import 'package:starrywave_screen/widget/dowork/focus/focus_widget.dart';
import 'package:starrywave_screen/widget/dowork/normal/normal_widget.dart';

class WorkingWidget extends StatefulWidget {

  WorkingWidget({super.key});

  @override
  State<WorkingWidget> createState() => _WorkingWidgetState();
}

class _WorkingWidgetState extends State<WorkingWidget> with TickerProviderStateMixin{
  final today = DateTime.now();

  late TabController _tabController;

  final List<Tab> myTabs = <Tab> [
    Tab(text: '집중',),
    Tab(text: '일상 0',),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _longWorking = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(24, 71, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      DateFormatToday(),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        width: 39,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Theme.of(context).colorScheme.onError),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'LV.1',
                              style: TextStyle(fontSize: 12, color: Colors.white),
                            )),
                      ),
                      SizedBox(width: 6,),
                      SvgPicture.asset('assets/icon/outlined/battery.svg')
                    ],
                  ),
                  Text("출발! 빨리 끝내고 쉬어볼까요?", style: TextStyle(fontSize: 14, color: Colors.grey),),
                  Container(
                    height: 36,
                    width: 358,
                    margin: EdgeInsets.fromLTRB(0, 30, 24, 0),
                    child: TextField(
                      controller: _longWorking,
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SvgPicture.asset('assets/icon/outlined/goal.svg',
                              colorFilter: ColorFilter.mode(Colors.blueAccent, BlendMode.srcIn),
                            ),
                          ),
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide.none
                        ),
                        hintText: "장기 목표가 있다면 작성해보세요!",
                        hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 12)
                      ),
                      cursorColor: Colors.black,
                    ),
                  ),
                  SizedBox(height: 32,),
                  Text("할 일 목록", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                  SizedBox(height: 10,),

                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: TabBar(
                tabs: myTabs,
                controller: _tabController,
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    FocusWidget(),
                    NormalWidget()
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}

