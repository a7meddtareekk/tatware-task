import 'package:flutter/material.dart';
import 'package:task_tatware/core/constant/constantsColors.dart';
import 'package:task_tatware/core/utils/app_strings.dart';
import 'package:task_tatware/core/utils/media_query.dart';
import 'package:task_tatware/presentation/componant/componant.dart';
import 'package:task_tatware/presentation/screens/chats.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
                child: Container()),
            Expanded(
              flex: 1,
              child: Container(
                width: context.width,
                height: context.height * 0.27,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/get-started1.png"),
                    alignment: AlignmentDirectional.centerEnd,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: context.width * 0.16,
                    right: context.width * 0.08,
                    top: context.height * 0.02,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              style: const TextStyle(
                                  fontSize: 19, color: Colors.black),
                              children: <TextSpan>[
                            TextSpan(text: AppStrings.hiMyNameIs),
                            TextSpan(
                              text: AppStrings.oranobot,
                              style: const TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                          ])),
                      Text(
                        AppStrings.iWillAlwaysBe,
                        style: const TextStyle(fontSize: 19),
                      ),
                      SizedBox(
                        height: context.height * 0.02,
                      ),
                      Text(
                        AppStrings.sayStartToGoToNext,
                        style: const TextStyle(fontSize: 19),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //SizedBox(height: context.height*0.02,),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Image(
                    image: const AssetImage(
                      'assets/Group106.png',
                    ),
                    height: context.height * 0.3,
                  ),
                  SizedBox(height: context.height*0.05,),
                  SizedBox(
                    width: context.width*0.3,
                    height: context.height*0.05,
                    child: MaterialButton(
                      onPressed: () {
                        navigateTo(context, const ChatScreen());
                      },
                      color: ConstantsColors.mainColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        AppStrings.next,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.language),
                      SizedBox(width:context.width *0.02 ,),
                      Text(AppStrings.english)
                    ],),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
