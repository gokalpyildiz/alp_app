import 'package:equatable/equatable.dart';

abstract class SpacexState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SpacexInitialState extends SpacexState {}

class SpacexPageLoadCompleteState extends SpacexState {}

class SpacexPageRefreshState extends SpacexState {}
