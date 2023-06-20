
import 'package:anglara_ecommerce_app/blocs/slider/app_events.dart';
import 'package:anglara_ecommerce_app/blocs/slider/app_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repositories/slider/slider_repositories.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;

  UserBloc(this._userRepository) : super(UserLoadingState()) {
    on<LoadUserEvent>((event, emit) async {
      emit(UserLoadingState());
      try {
        final users = await _userRepository.getUsers();
        emit(UserLoadedState(users));
      } catch (e) {
        emit(UserErrorState(e.toString()));
      }
    });
  }
}
