import 'package:first_git_app/Screens/HomePage/Quran/widget/CustomDivider.dart';
import 'package:first_git_app/Utlis/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../Utlis/Assets.dart';
import 'Moduls/SuraDetailsArg.dart';

class SuraDetails extends StatefulWidget {
  const SuraDetails({super.key});

  static const String routeName = 'suraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as SuraDetailsArg;

    if (verses.isEmpty) loadFile(arg.index);

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
          padding: const EdgeInsets.symmetric(horizontal: 8),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                textDirection: TextDirection.rtl,
                children: [
                  Image.asset(
                    AssetsImage.iconPlay,
                  ),
                  Text(
                    ' سوره ${arg.name}',
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
              CustomDivider(
                thickness: 1,
                indent: 35,
                endIndent: 35,
              ),
              verses.isEmpty
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      ),
                    )
                  : Expanded(
                      child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return CustomDivider(
                              indent: 8,
                              endIndent: 8,
                              thickness: 1.5,
                            );
                          },
                          itemBuilder: (context, index) {
                            return Text(
                              "${verses[index]} (${index + 1}) ",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(fontSize: 20),
                            );
                          },
                          itemCount: verses.length),
                    )
            ],
          ),
        ),
      )
    ]);
  }

  void loadFile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    verses = sura.split('\n');

    setState(() {});
  }
}
