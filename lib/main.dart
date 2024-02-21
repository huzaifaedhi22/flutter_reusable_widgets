import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widgets/HomePage.dart';
import 'package:flutter_widgets/app_observer.dart';
import 'package:flutter_widgets/cubit/drop_down_cubit.dart';

void main() {
  Bloc.observer = AppObserver();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: ((context) => DropDownCubit()),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true),
        home: MyHomePage(title: 'Flutter Widgets'),
      );
}
