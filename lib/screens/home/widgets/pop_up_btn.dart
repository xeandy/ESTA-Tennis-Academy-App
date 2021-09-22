import 'package:academy_app/business_logic/check_auth/check_auth_cubit.dart';
import 'package:academy_app/screens/about_us/about_us.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';

class PopUpBtn extends StatelessWidget {
  const PopUpBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckAuthCubit, CheckAuthState>(
      builder: (context, state) {
        return state.maybeMap(
          authenticated: (_) => popUp1(context),
          unauthenticated: (_) => popUp2(context),
          orElse: () => Container(),
        );
      },
    );
  }

  Widget popUp1(BuildContext context) {
    return PopupMenuButton<int>(
      onSelected: (item) => onSelected(context, item),
      icon: Icon(
        Icons.menu,
        size: 30,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      offset: Offset(-5, 45),
      color: Colors.purpleAccent[100],
      itemBuilder: (context) => [
        PopupMenuItem<int>(
          value: 0,
          child: Row(
            children: [
              Icon(
                Icons.people,
                color: Colors.white,
              ),
              SizedBox(width: kDefaultPadding),
              Text(
                'About Us',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        PopupMenuItem<int>(
          value: 1,
          child: Row(
            children: [
              Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              SizedBox(width: kDefaultPadding),
              Text(
                'Sign Out',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget popUp2(BuildContext context) {
    return PopupMenuButton<int>(
      onSelected: (item) => onSelected(context, item),
      icon: Icon(
        Icons.menu,
        size: 30,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      offset: Offset(-5, 45),
      color: Colors.purpleAccent[100],
      itemBuilder: (context) => [
        PopupMenuItem<int>(
          value: 0,
          child: Row(
            children: [
              Icon(
                Icons.people,
                color: Colors.white,
              ),
              SizedBox(width: kDefaultPadding),
              Text(
                'About Us',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        PopupMenuItem<int>(
          value: 2,
          child: Row(
            children: [
              Icon(
                Icons.people,
                color: Colors.white,
              ),
              SizedBox(width: kDefaultPadding),
              Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AboutUs()));
        break;
      case 1:
        context.read<CheckAuthCubit>().signOut();
        break;
      case 2:
        Navigator.of(context).pushReplacementNamed('/');
        break;
      default:
    }
  }
}
