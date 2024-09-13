import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:starrywave_screen/widget/addJob/add_focused_widget.dart';
import 'package:starrywave_screen/widget/addJob/add_time_widget.dart';
import 'package:starrywave_screen/widget/addJob/add_title_widget.dart';

class AddWorkScreen extends StatefulWidget {
  const AddWorkScreen({super.key});

  @override
  State<AddWorkScreen> createState() => _AddWorkScreenState();
}

class _AddWorkScreenState extends State<AddWorkScreen> with TickerProviderStateMixin{
  late TabController _tabController;

  final List<Tab> addTabs = <Tab>[
    Tab(text: "1",),
    Tab(text: "2",),
    Tab(text: "3",),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: addTabs.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.transparent, width: 0),  // 밑줄 제거
                    ),
                  ),
                  width: 180,
                  child: TabBar(
                    tabs: addTabs,
                    controller: _tabController,
                    indicator: BoxDecoration(),  // 빈 BoxDecoration으로 indicator 제거
                    indicatorColor: Colors.transparent,
                    labelColor: Colors.grey.shade600,
                    unselectedLabelColor: Colors.grey.shade300,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: SvgPicture.asset('assets/icon/outlined/cancel.svg')
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  //tabBar
                  AddTitleWidget(),
                  AddTimeWidget(),
                  AddFocusedWidget()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
