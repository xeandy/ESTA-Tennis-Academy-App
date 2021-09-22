import 'package:academy_app/admin/business_logic/news/add_news/add_news_cubit.dart';
import 'package:academy_app/admin/business_logic/side_bar/side_bar_actor/side_bar_actor_cubit.dart';
import 'package:academy_app/admin/business_logic/side_bar/side_bar_watcher/side_bar_watcher_cubit.dart';
import 'package:academy_app/admin/screens/add_news.dart';
import 'package:academy_app/admin/screens/admin_panel/widgets/side_bar.dart';
import 'package:academy_app/admin/screens/users.dart';
import 'package:academy_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class AdminPanel extends StatelessWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sideBarActorState = context.watch<SideBarActorCubit>().state;
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Panel'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
            icon: Icon(
              Icons.home,
              size: 30,
            ),
          ),
          SizedBox(width: kDefaultPadding),
        ],
        leading: IconButton(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          onPressed: () {
            if (sideBarActorState.xOffset == 0) {
              context.read<SideBarActorCubit>().openSideBar();
            } else {
              context.read<SideBarActorCubit>().closeSideBar();
            }
          },
          icon: Icon(
            Icons.menu,
            size: 30,
          ),
        ),
      ),
      body: Stack(
        children: [
          SideBar(),
          BlocBuilder<SideBarActorCubit, SideBarActorState>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () {
                  context.read<SideBarActorCubit>().closeSideBar();
                  FocusScope.of(context).unfocus();
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  transform: Matrix4.translationValues(state.xOffset, 0, 0),
                  child: BlocBuilder<SideBarWatcherCubit, SideBarWatcherState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        orElse: () => Container(),
                        addNews: (_) => BlocProvider<AddNewsCubit>(
                          create: (context) => getIt<AddNewsCubit>(),
                          child: AddNews(),
                        ),
                        users: (_) => Users(),
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
