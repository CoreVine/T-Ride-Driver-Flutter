import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:tride/core/observer/bloc_observer.dart';
import 'package:tride/tride_app.dart';
import 'core/di/dependency_injection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait<void>([ScreenUtil.ensureScreenSize(), setupGetIt()]);
  Bloc.observer = MyBlocObserver();

  runApp(const TrideApp());
}
