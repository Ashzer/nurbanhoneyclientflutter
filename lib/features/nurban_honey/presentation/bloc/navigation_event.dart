part of 'navigation_bloc.dart';

abstract class NavigationEvent extends Equatable {
  const NavigationEvent();
  @override
  List<Object> get props => [];
}

class NavigationPopularPressed extends NavigationEvent {
  const NavigationPopularPressed();
  @override
  List<Object> get props => [];
}

class NavigationRankPressed extends NavigationEvent {
  const NavigationRankPressed();
  @override
  List<Object> get props => [];
}

class NavigationProfilePressed extends NavigationEvent {
  const NavigationProfilePressed();
  @override
  List<Object> get props => [];
}
