import 'package:first_git_app/Screens/HomePage/Hadeth/Models/hadithModels.dart';
import 'package:first_git_app/Utlis/Assets.dart';
import 'package:flutter/material.dart';

import '../../../Utlis/app_colors.dart';
import '../Quran/widget/CustomDivider.dart';

class HadithDetails extends StatelessWidget {
  const HadithDetails({super.key});

  static const String routeName = '/hadith_details';

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as HadithModels;
    return Stack(children: [
      Image.asset(AssetsImage.backGroundImage,
          width: double.infinity, height: double.infinity, fit: BoxFit.fill),
      Scaffold(
        appBar: AppBar(
          title: Text(
            'Islamy',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.06,
            vertical: MediaQuery.of(context).size.height * 0.06,
          ),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
                  Colors.white.withOpacity(.6),
                  Colors.white,
                  Colors.white,
                  Colors.white,
                  Colors.white
                ],
              ),
              borderRadius: BorderRadius.circular(22),
              color: AppColors.whiteColor),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Text(
                arg.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              CustomDivider(
                thickness: 1,
                indent: 35,
                endIndent: 35,
              ),
              Expanded(
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Text(
                        arg.content[index],
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontSize: 20),
                      );
                    },
                    itemCount: arg.content.length),
              )
            ],
          ),
        ),
      )
    ]);
  }
}
