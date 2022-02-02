import 'package:app_new/shared/cubit/cubit.dart';
import 'package:app_new/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class New_Screen extends StatelessWidget {
  New_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyCubit,States>(
      listener: (BuildContext context,state){},
      builder: (BuildContext context,state) =>
          Scaffold(
            appBar: AppBar(title: Text("News"),),
            body: MyCubit.get(context).screens[MyCubit.get(context).curr_index],
            bottomNavigationBar: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.business ),
                      label: 'Business',
                      backgroundColor: Colors.green
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.sports),
                      label: 'Sports',
                      backgroundColor: Colors.yellow
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.animation_rounded),
                    label: 'Science',
                    backgroundColor: Colors.blue,
                  ),
                ],
                selectedItemColor: Colors.black,
                iconSize: 20,
                currentIndex: MyCubit.get(context).curr_index,
                onTap: (index){MyCubit.get(context).changeState(index);},
                elevation: 5
            ),
          ),
    );
  }

}

