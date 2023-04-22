import 'dart:js';

import 'package:book_tiket/src/data/data_source/local/app_data.dart';
import 'package:book_tiket/src/di/models/api_modules.dart';
import 'package:book_tiket/src/features/login/cubit/login_cubit.dart';
import 'package:book_tiket/src/features/sign_up/cubit/sign_up_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.I;

abstract class DIModule {
  void provider();
}

class Injection {
  static Future<void> inject() async {
    await ApiModules().provider();
  }

  static final List<BlocProvider> cubitProvider = [
    BlocProvider<LoginCubit>(create: (context) => LoginCubit()),
    BlocProvider(create: (context) => SignUpCubit()),
  ];
}

AppData get appData => getIt<AppData>();
