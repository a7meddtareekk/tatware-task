import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_tatware/core/utils/app_strings.dart';
import 'package:task_tatware/data/model/online-experts-model.dart';

import '../../data/model/bottomsheet-model.dart';
import '../../data/model/chat-model.dart';
import '../../data/model/select-categories-model.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());

  static TaskCubit get(context) => BlocProvider.of(context);

  List<ChatModel> chats = [
    ChatModel(msg: AppStrings.hiWhatsYouName, isSender: true),
    ChatModel(msg: AppStrings.abdalla, isSender: false),
    ChatModel(msg: AppStrings.okAbdallaWhatsYourLastname, isSender: true),
    ChatModel(msg: AppStrings.salah, isSender: false),
    ChatModel(msg: AppStrings.mrAbdallaSalahWhatsyourTitle, isSender: true),
    ChatModel(msg: AppStrings.frontEndDeveloper, isSender: false),
    ChatModel(msg: AppStrings.whatCategoriesYouWill, isSender: true)
  ];

  List<SelectCategoriesModel> selectCategory = [
    SelectCategoriesModel(msg: AppStrings.security, isSelected: false),
    SelectCategoriesModel(msg: AppStrings.supplyChain, isSelected: false),
    SelectCategoriesModel(
        msg: AppStrings.informationTechnology, isSelected: false),
    SelectCategoriesModel(msg: AppStrings.humanResource, isSelected: false),
    SelectCategoriesModel(msg: AppStrings.businessResearch, isSelected: false),
  ];
  List<OnlineExpertsModel> onlineExperts = [
    OnlineExpertsModel(name: AppStrings.lance),
    OnlineExpertsModel(name: AppStrings.niles),
    OnlineExpertsModel(name: AppStrings.samuel),
    OnlineExpertsModel(name: AppStrings.hilary),
    OnlineExpertsModel(name: AppStrings.hanson),
  ];
  List<BottomSheetModel> bottomSheet = [
    BottomSheetModel(
        image: 'assets/bottomsheet1.png',
        categoryName: AppStrings.informationTechnology,
        numberExpert: '23 ${AppStrings.experts}'),
    BottomSheetModel(
        image: 'assets/bottomsheet2.png',
        categoryName: AppStrings.supplyChain,
        numberExpert: '12 ${AppStrings.experts}'),
    BottomSheetModel(
        image: 'assets/bottomsheet3.png',
        categoryName: AppStrings.security,
        numberExpert: '14 ${AppStrings.experts}'),
    BottomSheetModel(
        image: 'assets/bottomsheet4.png',
        categoryName: AppStrings.humanResource,
        numberExpert: '8 ${AppStrings.experts}'),
    BottomSheetModel(
        image: 'assets/bottomsheet5.png',
        categoryName: AppStrings.immigration,
        numberExpert: '18 ${AppStrings.experts}'),
    BottomSheetModel(
        image: 'assets/bottomsheet6.png',
        categoryName: AppStrings.translation,
        numberExpert: '3 ${AppStrings.experts}'),
  ];
}
