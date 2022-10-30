import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_base_event.dart';

class HomeBaseBloc extends Bloc<HomeBaseEvent, int> {
  HomeBaseBloc() : super(0) {
    on<PageIndexChanged>(((event, emit) => emit(event.pageIndex)));
  }
}
