import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectfocusProvider extends StateNotifier<bool>{
  SelectfocusProvider() : super(true);

  void updateFocus(bool newFocus){
    state = newFocus;
  }

}

final selectFocusProvider = StateNotifierProvider<SelectfocusProvider, bool>((ref){
  return SelectfocusProvider();
});