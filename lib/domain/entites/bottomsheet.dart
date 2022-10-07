import 'package:equatable/equatable.dart';

class BottomSheet extends Equatable {
  final String image;

  final String categoryName;

  final String numberExpert;

  const BottomSheet(
      {required this.image, required this.categoryName, required this.numberExpert});

  @override
  List<Object> get props => [image, categoryName, numberExpert];
}