import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectTimeProvider extends StateNotifier<TimeOfDay>{
  SelectTimeProvider() : super(TimeOfDay.now());

  void updateTime (TimeOfDay newTime){
    state = newTime;
  }
}

final selectedTimeProvider = StateNotifierProvider<SelectTimeProvider, TimeOfDay>((ref){
  return SelectTimeProvider();
});