import 'package:equatable/equatable.dart';

class Chats extends Equatable {
  final String msg;
  final bool isSender;

  const Chats({required this.msg,required this.isSender});

  @override
  List<Object> get props => [msg,isSender];
}