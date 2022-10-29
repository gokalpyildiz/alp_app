import 'package:alp_app/pages/spacex/bloc/spacex_event.dart';
import 'package:alp_app/pages/spacex/bloc/spacex_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpacexBloc extends Bloc<SpacexEvent, SpacexState> {
  SpacexBloc(SpacexState initialState) : super(initialState);
}
