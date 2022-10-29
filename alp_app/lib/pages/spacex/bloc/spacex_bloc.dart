import 'package:alp_app/pages/spacex/bloc/spacex_event.dart';
import 'package:alp_app/pages/spacex/bloc/spacex_state.dart';
import 'package:bloc/bloc.dart';

class SpacexBlox extends Bloc<SpacexEvent, SpacexState> {
  SpacexBlox(SpacexState initialState) : super(initialState);
}
