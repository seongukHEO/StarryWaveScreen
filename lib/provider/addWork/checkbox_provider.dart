import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckboxProvider extends StateNotifier<bool>{
  CheckboxProvider() : super(true);

  //체크박스 상태를 업데이트하는 메서드
  void updateCheckBox(bool value){
    state = value;
  }
}

//해당 provider에 접근하기 위한 변수
final checkBoxProvider = StateNotifierProvider<CheckboxProvider, bool>((ref){
  return CheckboxProvider();
});