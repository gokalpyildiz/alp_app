import 'package:flutter_bloc/flutter_bloc.dart';

import 'spacex_event.dart';
import 'spacex_state.dart';

class SpacexBloc extends Bloc<SpacexEvent, SpacexState> {
  SpacexBloc() : super(SpacexInitialState()) {
    on<SpacexPageLoaded>((event, emit) => emit(SpacexPageLoadCompleteState()));
    on<SpacexPageRefresh>((event, emit) => emit(SpacexPageRefreshState()));
  }
}
