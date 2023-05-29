part of 'user_bloc.dart';

class UserState extends Equatable {
  final String email;
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String password;
  final String? inviteCode;
  final int? ngnBalance;
  final int? usdBalance;
  final bool? showBalance;

  final bool? ngnSelected;
  final bool? usdSelected;

  const UserState({
    required this.email,
    this.username,
    this.firstName,
    this.lastName,
    this.phone,
    required this.password,
    this.inviteCode,
    this.ngnBalance = 100000,
    this.usdBalance = 10000,
    this.showBalance = false,
    this.ngnSelected = true,
    this.usdSelected = false,
  });

  @override
  List<Object> get props => [
        email,
        password,
        showBalance ?? false,
        ngnSelected ?? true,
        usdSelected ?? false
      ];
}

class UserInitial extends UserState {
  const UserInitial({
    required super.email,
    super.username,
    super.firstName,
    super.lastName,
    super.phone,
    required super.password,
    super.inviteCode,
    super.usdBalance,
    super.ngnBalance,
    super.showBalance,
  });
}
