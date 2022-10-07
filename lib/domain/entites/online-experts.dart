import 'package:equatable/equatable.dart';

class OnlineExperts extends Equatable {
  final String name;

  const OnlineExperts({required this.name});

  @override
  List<Object> get props => [name];
}