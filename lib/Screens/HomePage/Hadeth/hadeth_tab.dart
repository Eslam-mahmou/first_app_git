import 'package:first_git_app/Screens/HomePage/Hadeth/Models/hadithModels.dart';
import 'package:first_git_app/Screens/HomePage/Hadeth/hadith_details.dart';
import 'package:first_git_app/Utlis/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../Utlis/Assets.dart';
import '../Quran/widget/CustomDivider.dart';

class Hadithtab extends StatefulWidget {
  const Hadithtab({super.key});

  @override
  State<Hadithtab> createState() => _HadithtabState();
}

class _HadithtabState extends State<Hadithtab> {
  List<HadithModels> ahadithList = [];

  @override
  Widget build(BuildContext context) {
    loadHadith();
    return Column(
      children: [
        Expanded(flex: 1, child: Image.asset(AssetsImage.hadithImage)),
        CustomDivider(),
        Text(
          'Hadith Name',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        CustomDivider(),
        Expanded(
          flex: 2,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return CustomDivider(
                thickness: 1,
              );
            },
            itemCount: ahadithList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadithDetails.routeName,
                      arguments: HadithModels(
                          title: ahadithList[index].title,
                          content: ahadithList[index].content));
                },
                child: ahadithList.isEmpty
                    ? const Center(
                        child: CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      ))
                    : Text(
                        ahadithList[index].title,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontSize: 24),
                      ),
              );
            },
          ),
        )
      ],
    );
  }

  void loadHadith() async {
    String hadith = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadith = hadith.split('#\r\n');
    for (int i = 0; i < ahadith.length; i++) {
      List<String> ahadithLines = ahadith[i].split('\n');
      String title = ahadithLines[0];
      ahadithLines.removeAt(0);
      HadithModels hadith = HadithModels(title: title, content: ahadithLines);
      ahadithList.add(hadith);
    }
    setState(() {});
  }
}
