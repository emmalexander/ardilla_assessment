import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc()
      : super(const UserInitial(
          email: '',
          username: '',
          firstName: '',
          lastName: '',
          phone: '',
          password: '',
        )) {
    on<EmailEvent>((event, emit) {
      emit(UserState(
        email: event.email,
        password: state.password,
      ));
    });
    on<ShowBalanceEvent>((event, emit) {
      emit(UserState(
        email: state.email,
        showBalance: state.showBalance == false ? true : false,
        password: state.password,
        ngnSelected: state.ngnSelected,
        usdSelected: state.usdSelected,
      ));
    });
    on<NGNSelectEvent>((event, emit) {
      emit(UserState(
        email: state.email,
        password: state.password,
        showBalance: state.showBalance,
        ngnSelected: true,
        usdSelected: false,
      ));
    });
    on<USDSelectEvent>((event, emit) {
      emit(UserState(
        email: state.email,
        password: state.password,
        showBalance: state.showBalance,
        ngnSelected: false,
        usdSelected: true,
      ));
    });
  }
}
