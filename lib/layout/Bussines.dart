import 'package:app_new/shared/cubit/cubit.dart';
import 'package:app_new/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'News.dart';

class BussinessPage extends StatelessWidget {
  const BussinessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List business = MyCubit.get(context).business;
    return  BlocConsumer<MyCubit,States>(
        listener: (BuildContext context,state){},
        builder: (BuildContext context,state) =>
            buildItem(business,context));
  }

}
