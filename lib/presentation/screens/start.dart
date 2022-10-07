import 'package:flutter/material.dart';
import 'package:task_tatware/core/constant/constantsColors.dart';
import 'package:task_tatware/core/utils/app_strings.dart';
import 'package:task_tatware/core/utils/media_query.dart';
import 'package:task_tatware/presentation/componant/componant.dart';
import 'package:task_tatware/presentation/screens/get_started.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: context.width,
          height: context.height,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/start-screen.png")),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(AppStrings.oranos,
                            style: const TextStyle(
                                fontSize: 45,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                         Padding(
                          padding: EdgeInsets.only(bottom: context.height*0.01),
                          child: const CircleAvatar(
                            radius: 4,
                            backgroundColor: ConstantsColors.mainColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: context.height*0.01,
                    ),
                    Text(
                      AppStrings.expertFromEveryPlanet,
                      style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              // const Spacer(),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: context.width*0.04),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: MaterialButton(
                      onPressed: () {
                        navigateTo(context, const GetStarted());
                      },
                      color: ConstantsColors.mainColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        AppStrings.getStarted,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppStrings.donthaveAnAccount),
                  TextButton(onPressed: (){}, child: Text(AppStrings.signUp,style: const TextStyle(color: ConstantsColors.mainColor),))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Icon(Icons.language),
                  SizedBox(width:context.width *0.02 ,),
                Text(AppStrings.english)
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
