import 'package:first_git_app/Screens/HomePage/Quran/sura_details.dart';
import 'package:first_git_app/Screens/HomePage/Quran/widget/CustomSuraNameText.dart';
import 'package:first_git_app/Utlis/Assets.dart';
import 'package:first_git_app/Utlis/app_colors.dart';
import 'package:flutter/material.dart';
import 'Moduls/SuraDetailsArg.dart';
import 'widget/CustomDivider.dart';

class QuranTab extends StatelessWidget {
  QuranTab({super.key});

  List<String> suras = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1, child: Image.asset(AssetsImage.quranImage)),
        CustomDivider(),
        Row(
          children: [
            Expanded(
              child: Text(
                'Sura name',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(
              height: 38,
              child: VerticalDivider(
                thickness: 2.5,
                color: AppColors.primaryColor,
              ),
            ),
            Expanded(
              child: Text(
                'Sura number',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        CustomDivider(),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: ListView.separated(
                  separatorBuilder: (context,index){
                    return CustomDivider();
                  },

                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, SuraDetails.routeName,
                              arguments: SuraDetailsArg(
                                  name: suras[index], index: index));
                        },
                        child: Row(
                          children: [
                            CustomSuraNameText(
                              text: "${index + 1}",
                            ),
                            CustomSuraNameText(
                              text: suras[index],
                            ),
                          ],
                        ));
                  },
                  itemCount: suras.length,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
