import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectFocusProvider extends StateNotifier<bool>{
  SelectFocusProvider() : super(true);

  void updateFocus(bool newFocus){
    state = newFocus;
  }

}

final selectFocusProvider = StateNotifierProvider<SelectFocusProvider, bool>((ref){
  return SelectFocusProvider();
});