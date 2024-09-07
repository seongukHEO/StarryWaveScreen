import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectdateProvider extends StateNotifier<DateTime>{
  SelectdateProvider() : super(DateTime.now());

  void updateDate (DateTime newDate){
    state = newDate;
  }
}

final selectDateProvider = StateNotifierProvider<SelectdateProvider, DateTime>((ref) {
  return SelectdateProvider();
});