import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_tatware/core/constant/constantsColors.dart';
import 'package:task_tatware/core/utils/app_strings.dart';
import 'package:task_tatware/core/utils/media_query.dart';
import 'package:task_tatware/presentation/controller/task_cubit.dart';

import '../componant/componant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskCubit, TaskState>(
      builder: (context, state) {
        var online = TaskCubit.get(context).onlineExperts;
        var bottomSheet = TaskCubit.get(context).bottomSheet;
        return Scaffold(

          body: Padding(
            padding: EdgeInsets.only(left: context.width * 0.05,
                right: context.width * 0.05,
                top: context.height * 0.03),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppStrings.recommendedExperts),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                          color: ConstantsColors.receiverColor,
                        ))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ConstantsColors.appBarColor
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Image(image: AssetImage('assets/homeRecom.png')),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text("(5.0)", style: TextStyle(
                                          color: ConstantsColors
                                              .receiverColor),),
                                      Spacer(),
                                      Icon(
                                        Icons.favorite,
                                        color: ConstantsColors.receiverColor,
                                      )
                                    ],
                                  ),
                                  Text(AppStrings.kareemAdel),
                                  Text(
                                    AppStrings.supplyChain,
                                    style: const TextStyle(
                                        color: ConstantsColors.receiverColor,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: context.width * 0.03,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ConstantsColors.appBarColor
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Image(image: AssetImage('assets/mernaAdel.png')),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text("(4.9)", style: TextStyle(
                                          color: ConstantsColors
                                              .receiverColor),),
                                      Spacer(),
                                      Icon(
                                        Icons.favorite,
                                        color: ConstantsColors.receiverColor,
                                      )
                                    ],
                                  ),
                                  Text(AppStrings.mernaAdel),
                                  Text(
                                    AppStrings.supplyChain,
                                    style: const TextStyle(
                                        color: ConstantsColors.receiverColor,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: context.height * 0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppStrings.onlineExperts),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                          color: ConstantsColors.receiverColor,
                        ))
                  ],
                ),
                SizedBox(height: context.height * 0.01,),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          buildOnlineExperts(online[index]),
                          SizedBox(width: context.width * 0.04,)
                        ],
                      );
                    },
                    itemCount: online.length,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context, builder: (buildContext) {
                      //return ShowBottomSheet();
                      return Container(
                        width: context.width,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Container(
                                width: context.width * 0.15,
                                height: context.height * 0.009,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: ConstantsColors.receiverColor
                                ),
                              ),
                              SizedBox(height: context.height * 0.02,),
                              Expanded(child: ListView.builder(
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      buildBottomSheet(bottomSheet[index],context),
                                      SizedBox(height: context.height*0.02,)
                                    ],
                                  );
                                },
                              itemCount: bottomSheet.length,
                              ))
                            ],),
                        ),
                      );
                    });
                  },
                  child: Container(
                    width: context.width * 0.15,
                    height: context.height * 0.009,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ConstantsColors.receiverColor
                    ),
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
