  import 'package:first_git_app/Screens/HomePage/Quran/quran_tab.dart';
import 'package:first_git_app/Screens/HomePage/Setting/SettingTab.dart';
import 'package:first_git_app/Utlis/Assets.dart';
import 'package:first_git_app/Utlis/app_colors.dart';
import 'package:flutter/material.dart';

import 'Hadeth/hadeth_tab.dart';
import 'Radio/radio_tab.dart';
import 'Sebha/sebha_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AssetsImage.backGroundImage,
            width: double.infinity, height: double.infinity, fit: BoxFit.fill),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islamy',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                buildBottomNavigationBarItem(
                    icon: const ImageIcon(
                      AssetImage(AssetsImage.iconQuran),
                    ),
                    label: 'Quran'),
                buildBottomNavigationBarItem(
                    icon: const ImageIcon(
                      AssetImage(AssetsImage.iconHadeth),
                    ),
                    label: 'Hadith'),
                buildBottomNavigationBarItem(
                    icon: const ImageIcon(
                      AssetImage(AssetsImage.iconSebha),
                    ),
                    label: 'Sebha'),
                buildBottomNavigationBarItem(
                    icon: const ImageIcon(
                      AssetImage(AssetsImage.iconRadio),
                    ),
                    label: 'Radio'),
                buildBottomNavigationBarItem(
                    icon: const Icon(Icons.settings), label: 'Quran'),

              ],
            ),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem({
    required Widget icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: icon,
      label: label,
    );
  }

  List<Widget> tabs =  [
    QuranTab(),
    Hadithtab(),
    SebhaTab(),
    RadioTab(),
    SettingTab()
  ];
}
