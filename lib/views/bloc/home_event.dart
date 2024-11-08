import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable{
  const HomeEvent();
  @override
  List<Object>  get props => [];
}

class ChangeTabEvent extends HomeEvent{
  final int newIndex;

   const ChangeTabEvent(this.newIndex);

  @override
  List<Object>  get props => [newIndex];
}




