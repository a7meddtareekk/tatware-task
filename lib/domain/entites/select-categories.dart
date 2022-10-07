import 'package:equatable/equatable.dart';

class SelectCategories extends Equatable {
  final String msg;
   bool isSelected;

   SelectCategories({required this.msg,required this.isSelected});

  @override
  List<Object> get props => [msg, isSelected];
}