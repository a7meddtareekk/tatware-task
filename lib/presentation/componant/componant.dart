
import 'package:flutter/material.dart';
import 'package:task_tatware/core/constant/constantsColors.dart';
import 'package:task_tatware/core/utils/media_query.dart';
import 'package:task_tatware/data/model/bottomsheet-model.dart';
import 'package:task_tatware/data/model/chat-model.dart';
import 'package:task_tatware/data/model/online-experts-model.dart';

import '../../core/utils/app_strings.dart';

Widget buildReceiverMessage(ChatModel chatModel, BuildContext context) =>
    Align(
      alignment: AlignmentDirectional.centerStart,
      child: Row(
        children: [
          CircleAvatar(radius: 20,child: Image.asset("assets/receiver.png"),backgroundColor: ConstantsColors.receiverColor[200]),
          SizedBox(width:context.width*0.03 ,),
          Container(
            height: context.height*0.05,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration:  BoxDecoration(
                  color: ConstantsColors.receiverColor[200],
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Center(child: Text(chatModel.msg,textAlign: TextAlign.center,))),
        ],
      ),
    );

Widget buildSenderMessage(ChatModel chatModel,BuildContext context) =>
    Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,


        children: [
          Container(
              height: context.height*0.05,
              width: context.width*0.60,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: const BoxDecoration(
                  color: ConstantsColors.mainColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)

                  )
              ),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                      child: Text(chatModel.msg,style: TextStyle(color: Colors.white),))),
          SizedBox(width:context.width*0.03 ,),
          Image.asset("assets/sender.png")
        ],
      ),
    );


Widget buildOnlineExperts (OnlineExpertsModel model)=>Column(
  children: [
    Stack(
      alignment: AlignmentDirectional.topEnd,
      children: const [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey,
        ),
        CircleAvatar(
          radius: 4,
          backgroundColor: ConstantsColors.mainColor,
        ),
      ],
    ),
     Text(
      model.name,
      style:
      TextStyle(color: Colors.grey, fontSize: 12),
    )
  ],
);

void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);
Widget buildBottomSheet(BottomSheetModel model ,BuildContext context)=>
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: ConstantsColors.receiverColor[300]!,width: 1)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageIcon(AssetImage('${model.image}'),size:40,color: ConstantsColors.mainColor),
            SizedBox(width: context.width*0.02,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(model.categoryName),
                Text(model.numberExpert,style: TextStyle(color: ConstantsColors.receiverColor[300]),),
              ],
            ),
            const Spacer(),
            IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_rounded))
          ],
        ),
      ),
    );