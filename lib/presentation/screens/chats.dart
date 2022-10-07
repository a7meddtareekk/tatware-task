import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_tatware/core/constant/constantsColors.dart';
import 'package:task_tatware/core/utils/app_strings.dart';
import 'package:task_tatware/core/utils/media_query.dart';
import 'package:task_tatware/presentation/controller/task_cubit.dart';

import '../componant/componant.dart';
import 'layout.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskCubit, TaskState>(
      builder: (context, state) {
        var chats = TaskCubit.get(context).chats;
        var selectCategory = TaskCubit.get(context).selectCategory;

        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Column(children: [
                            if (chats[index].isSender == true)
                              buildReceiverMessage(chats[index], context),
                            if (chats[index].isSender == false)
                              buildSenderMessage(chats[index], context),
                            SizedBox(
                              height: context.height * 0.03,
                            ),
                          ]);
                        },
                        itemCount: chats.length)),
                Expanded(
                    flex: 1,
                    child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:  EdgeInsets.only(left: context.width*0.2),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      selectCategory[index].isSelected= !selectCategory[index].isSelected;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      selectCategory[index].isSelected == false
                                          ? CircleAvatar(
                                              radius: 12,
                                              backgroundColor: ConstantsColors
                                                  .receiverColor[300],
                                            )
                                          : const CircleAvatar(
                                              radius: 12,
                                              backgroundColor:
                                                  ConstantsColors.mainColor,
                                              child: Icon(Icons.arrow_circle_right),
                                            ),
                                      SizedBox(
                                        width: context.width * 0.04,
                                      ),
                                      Text(selectCategory[index].msg)
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: context.height * 0.01,
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: selectCategory.length)),
                Text(AppStrings.sayDoneOr,style: TextStyle(color: ConstantsColors.receiverColor[300]),),
                Container(

                  decoration: BoxDecoration(
                      color: ConstantsColors.receiverColor[200],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.language,color: ConstantsColors.receiverColor[500],),
                      SizedBox(width: context.width*0.01,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: AppStrings.typeSomething,
                              hintStyle: TextStyle(color: ConstantsColors.receiverColor[500])
                            ),
                          ),
                        ),
                      ),
                      Icon(Icons.keyboard_voice,color: ConstantsColors.receiverColor[500]),
                       IconButton(color: ConstantsColors.mainColor, onPressed:(){navigateTo(context, const TaskLayout());}, icon:Icon(Icons.send) ,),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
