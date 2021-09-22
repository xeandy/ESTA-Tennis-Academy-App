import 'package:flutter_bloc/flutter_bloc.dart';

enum BottomNavBarState { news, program, payment, profile }

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarState.news);
  int currentIndex = 0;

  void onTap(int index) {
    currentIndex = index;
    if (currentIndex == 0) {
      return emit(BottomNavBarState.news);
    }
    if (currentIndex == 1) {
      return emit(BottomNavBarState.program);
    }
    if (currentIndex == 2) {
      return emit(BottomNavBarState.payment);
    }
    if (currentIndex == 3) {
      return emit(BottomNavBarState.profile);
    }
  }
}
