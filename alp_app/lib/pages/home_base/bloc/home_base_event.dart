import 'package:equatable/equatable.dart';

abstract class HomeBaseEvent extends Equatable {
  const HomeBaseEvent();
  @override
  List<Object?> get props => [];
}

class PageIndexChanged extends HomeBaseEvent {
  final int pageIndex;

  const PageIndexChanged(this.pageIndex);
  @override
  List<Object?> get props => [pageIndex];
}
