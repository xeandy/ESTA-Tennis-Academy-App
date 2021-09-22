import 'package:academy_app/screens/home/widgets/admin_btn.dart';
import 'package:academy_app/screens/home/widgets/bottom_nav_bar.dart';
import 'package:academy_app/screens/home/widgets/btm_nav_bar_cubit.dart';
import 'package:academy_app/screens/home/widgets/pop_up_btn.dart';
import 'package:academy_app/screens/news/news.dart';
import 'package:academy_app/screens/payments/payment.dart';
import 'package:academy_app/screens/profile/profile.dart';
import 'package:academy_app/screens/programs/programs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgLightColor,
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent[700],
        title: GestureDetector(
          onTap: () {
            context.read<BottomNavBarCubit>().onTap(0);
          },
          child: Image.asset(
            'assets/images/home_logo.png',
            height: 45,
            width: 45,
            filterQuality: FilterQuality.medium,
          ),
        ),
        actions: [
          AdminBtn(),
          PopUpBtn(),
          SizedBox(width: kDefaultPadding),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
          builder: (context, state) {
            if (state == BottomNavBarState.news) {
              return News();
            }
            if (state == BottomNavBarState.program) {
              return Programs();
            }
            if (state == BottomNavBarState.payment) {
              return Payment();
            }
            if (state == BottomNavBarState.profile) {
              return Profile();
            } else {
              return Container();
            }
          },
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
