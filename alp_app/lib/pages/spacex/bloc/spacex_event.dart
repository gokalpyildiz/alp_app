import 'package:equatable/equatable.dart';

abstract class SpacexEvent extends Equatable {
  const SpacexEvent();
  @override
  List<Object?> get props => [];
}

class SpacexPageLoaded extends SpacexEvent {
  const SpacexPageLoaded();
}

class SpacexPageRefresh extends SpacexEvent {
  const SpacexPageRefresh();
}
