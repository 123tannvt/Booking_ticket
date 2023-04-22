import 'package:book_tiket/src/di/injection/injection.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/app.dart';

void main() async {
  // await Injection.inject();
  runApp(MultiBlocProvider(
    providers: Injection.cubitProvider,
    child: const MyApp(),
  ));
}
