import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/views/bloc/home_event.dart';
import 'package:test_app/views/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState(currentIndex: 0)) {
    on<ChangeTabEvent>((event, emit) {
      emit(state.copyWith(currentIndex: event.newIndex));
    });
  }
}
