// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to T-Ride App`
  String get welcome {
    return Intl.message(
      'Welcome to T-Ride App',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Join as a Trusted Driver`
  String get firstOnBoardingTitle {
    return Intl.message(
      'Join as a Trusted Driver',
      name: 'firstOnBoardingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Become part of our team and help transport children safely and securely.`
  String get firstOnBoardingDesc {
    return Intl.message(
      'Become part of our team and help transport children safely and securely.',
      name: 'firstOnBoardingDesc',
      desc: '',
      args: [],
    );
  }

  /// `Easy Ride Management`
  String get secondOnBoardingTitle {
    return Intl.message(
      'Easy Ride Management',
      name: 'secondOnBoardingTitle',
      desc: '',
      args: [],
    );
  }

  /// `View nearby requests, accept rides, and get started seamlessly.`
  String get secondOnBoardingDesc {
    return Intl.message(
      'View nearby requests, accept rides, and get started seamlessly.',
      name: 'secondOnBoardingDesc',
      desc: '',
      args: [],
    );
  }

  /// `Safety and Trust Above All`
  String get thirdOnBoardingTitle {
    return Intl.message(
      'Safety and Trust Above All',
      name: 'thirdOnBoardingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Follow safety protocols to ensure the comfort and security of families.`
  String get thirdOnBoardingDesc {
    return Intl.message(
      'Follow safety protocols to ensure the comfort and security of families.',
      name: 'thirdOnBoardingDesc',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Start`
  String get start {
    return Intl.message('Start', name: 'start', desc: '', args: []);
  }

  /// `Your Email`
  String get yourEmail {
    return Intl.message('Your Email', name: 'yourEmail', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Or sign up with social account`
  String get orSingUpWithSocialAccount {
    return Intl.message(
      'Or sign up with social account',
      name: 'orSingUpWithSocialAccount',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get facebook {
    return Intl.message('Facebook', name: 'facebook', desc: '', args: []);
  }

  /// `Google`
  String get google {
    return Intl.message('Google', name: 'google', desc: '', args: []);
  }

  /// `By signing up, you agree to our `
  String get bySigningUpYouAgreeToOur {
    return Intl.message(
      'By signing up, you agree to our ',
      name: 'bySigningUpYouAgreeToOur',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Use`
  String get termsOfUse {
    return Intl.message('Terms of Use', name: 'termsOfUse', desc: '', args: []);
  }

  /// ` and `
  String get and {
    return Intl.message(' and ', name: 'and', desc: '', args: []);
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Forget`
  String get forgetPassword {
    return Intl.message('Forget', name: 'forgetPassword', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
