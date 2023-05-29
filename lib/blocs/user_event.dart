part of 'user_bloc.dart';

class UserEvent extends Equatable {
  const UserEvent();
  @override
  List<Object?> get props => [];
}

class EmailEvent extends UserEvent {
  final String email;
  const EmailEvent({required this.email});
  @override
  List<Object?> get props => [email];
}

class UsernameEvent extends UserEvent {
  final String username;
  const UsernameEvent({required this.username});
  @override
  List<Object?> get props => [username];
}

class FirstNameEvent extends UserEvent {
  final String firstName;
  const FirstNameEvent({required this.firstName});
  @override
  List<Object?> get props => [firstName];
}

class LastNameEvent extends UserEvent {
  final String lastName;
  const LastNameEvent({required this.lastName});
  @override
  List<Object?> get props => [lastName];
}

class PhoneEvent extends UserEvent {
  final String phone;
  const PhoneEvent({required this.phone});
  @override
  List<Object?> get props => [phone];
}

class PasswordEvent extends UserEvent {
  final String phone;
  const PasswordEvent({required this.phone});
  @override
  List<Object?> get props => [phone];
}

class ShowBalanceEvent extends UserEvent {}

class NGNSelectEvent extends UserEvent {}

class USDSelectEvent extends UserEvent {}
