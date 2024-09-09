import 'package:flutter_riverpod/flutter_riverpod.dart';

class GridProvider extends StateNotifier<List<bool>>{
  GridProvider() : super([false, false, false, false]);

  void toggleSelected(int selectedIndex){
    state = List.generate(state.length, (index) => index == selectedIndex);
  }

}

final gridStateProvider = StateNotifierProvider<GridProvider, List<bool>>((ref){
  return GridProvider();
});