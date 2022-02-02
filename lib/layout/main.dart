import 'package:app_new/layout/New_Screen.dart';
import 'package:app_new/shared/cubit/cubit.dart';
import 'package:app_new/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'DioHelper.dart';



Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>MyCubit()..getBusiness()..getScience()..getSports(),
      child: BlocConsumer<MyCubit,States>(
        listener: (BuildContext context,state){},
        builder: (BuildContext context,state) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home:
          New_Screen(),

        ),
      ),
    );
  }
}

