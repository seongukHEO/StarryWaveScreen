import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkingTapbarProvider extends StateNotifier<int> {
  WorkingTapbarProvider() : super(0);

  void setTabIndex(int index){
    state = index;
  }
}

final workingTabBarProvider = StateNotifierProvider((ref){
  return WorkingTapbarProvider();
});