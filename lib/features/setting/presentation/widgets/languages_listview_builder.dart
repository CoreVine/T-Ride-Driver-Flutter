import 'package:flutter/material.dart';
import 'package:tride/core/utils/languages.dart';

import 'language_item.dart';

class LanguagesListViewBuilder extends StatefulWidget {
  const LanguagesListViewBuilder({super.key});

  @override
  State<LanguagesListViewBuilder> createState() =>
      _LanguagesListViewBuilderState();
}

class _LanguagesListViewBuilderState extends State<LanguagesListViewBuilder> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: languages.length,
      itemBuilder: (context, index) {
        return LanguageItem(
          assetName: languages[index]['image'],
          title: languages[index]['name'],
          selected: currentIndex == index,
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
        );
      },
    );
  }
}
