import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final int currentIndex;

  const HomeState({this.currentIndex = 0}); // Default qiymat 0

  HomeState copyWith({int? currentIndex}) {
    return HomeState(
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }

  @override
  List<Object> get props => [currentIndex];
}
