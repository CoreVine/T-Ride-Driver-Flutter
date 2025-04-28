import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:tride/core/helpers/shared_pref_helper.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit() : super(const Locale('en')) {
    _loadLocale();
  }

  Future<void> _loadLocale() async {
    final languageCode =
        await SharedPrefHelper.getString('languageCode') ?? 'en';
    emit(Locale(languageCode));
  }

  String getLocale() {
    return Intl.getCurrentLocale();
  }

  Future<void> setLocale(Locale locale) async {
    emit(locale);
    await SharedPrefHelper.setData('languageCode', locale.languageCode);
  }
}
