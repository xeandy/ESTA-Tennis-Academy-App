import 'package:academy_app/admin/business_logic/get_application_form/get_application_form_cubit.dart';
import 'package:academy_app/business_logic/user/update_user/update_user_cubit.dart';
import 'package:academy_app/business_logic/user/user_watcher/user_watcher_cubit.dart';
import 'package:academy_app/model/user_data/programs/profile_adtService.dart';
import 'package:academy_app/model/user_data/programs/profile_asp.dart';
import 'package:academy_app/model/user_data/programs/profile_camp.dart';
import 'package:academy_app/screens/profile/edit_profile.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';
import '../../../injection.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: BlocBuilder<UserWatcherCubit, UserWatcherState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => Container(),
            loadFailure: (state) => Center(
              child: Text(
                state.userDataFailure.maybeMap(
                  insufficientPermission: (_) => 'Insufficient Permission',
                  orElse: () => 'Unexpected Error. \nPlease contact support ',
                ),
              ),
            ),
            loadSuccess: (state) => Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 220,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent[700],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 80,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 78,
                                child: state.userData.imgUrl!.isNotEmpty
                                    ? ClipOval(
                                        child: CachedNetworkImage(
                                          imageUrl: state.userData.imgUrl!,
                                          fit: BoxFit.cover,
                                          width: 200,
                                          height: 200,
                                          placeholder: (context, url) => Center(
                                            child: CircularProgressIndicator(
                                              color: Colors.purpleAccent[700],
                                            ),
                                          ),
                                        ),
                                      )
                                    : IconButton(
                                        color: Colors.purple[300],
                                        iconSize: 50,
                                        icon: Icon(
                                          Icons.add_a_photo,
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MultiBlocProvider(
                                                        providers: [
                                                          BlocProvider<
                                                              UpdateUserCubit>(
                                                            create: (context) =>
                                                                getIt<
                                                                    UpdateUserCubit>(),
                                                          ),
                                                          BlocProvider<
                                                                  GetApplicationFormCubit>(
                                                              create: (context) => getIt<
                                                                  GetApplicationFormCubit>()
                                                                ..getApplicationForm(state
                                                                    .userData.id
                                                                    .getOrCrash())),
                                                        ],
                                                        child: EditProfile(
                                                            userData:
                                                                state.userData),
                                                      )));
                                        },
                                      ),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                state.userData.userName!.getOrCrash(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                softWrap: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: kDefaultPadding,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MultiBlocProvider(
                                    providers: [
                                      BlocProvider<UpdateUserCubit>(
                                        create: (context) =>
                                            getIt<UpdateUserCubit>(),
                                      ),
                                      BlocProvider<GetApplicationFormCubit>(
                                          create: (context) =>
                                              getIt<GetApplicationFormCubit>()
                                                ..getApplicationForm(state
                                                    .userData.id
                                                    .getOrCrash())),
                                    ],
                                    child:
                                        EditProfile(userData: state.userData),
                                  )));
                        },
                        icon: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      right: kDefaultPadding,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/profilePolicies',
                          );
                        },
                        icon: Icon(
                          Icons.assignment,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 83,
                      right: kDefaultPadding,
                      child: Text(
                        'Policies',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView(
                    padding:
                        EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    shrinkWrap: true,
                    children: [
                      SizedBox(height: kDefaultPadding / 2),
                      Center(
                        child: Text(
                          'After-School Program',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      state.userData.asp.isNotEmpty
                          ? Container(
                              height: 180,
                              child: CarouselSlider(
                                items: state.userData.asp
                                    .map(
                                      (profileAsp) => ProfileProgramCard(
                                        profileAsp: profileAsp,
                                      ),
                                    )
                                    .toList(),
                                options: CarouselOptions(
                                  enableInfiniteScroll: false,
                                  enlargeCenterPage: true,
                                  viewportFraction: 0.80,
                                ),
                              ),
                            )
                          : Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 90),
                                  Text('Empty...'),
                                  SizedBox(height: 90),
                                ],
                              ),
                            ),
                      SizedBox(height: kDefaultPadding / 2),
                      Center(
                        child: Text(
                          'Camp',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      state.userData.camp.isNotEmpty
                          ? Container(
                              height: 220,
                              child: CarouselSlider(
                                items: state.userData.camp
                                    .map(
                                      (profileCamp) => CampProgramCard(
                                        profileCamp: profileCamp,
                                      ),
                                    )
                                    .toList(),
                                options: CarouselOptions(
                                  enableInfiniteScroll: false,
                                  enlargeCenterPage: true,
                                  viewportFraction: 0.80,
                                ),
                              ),
                            )
                          : Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 90),
                                  Text('Empty...'),
                                  SizedBox(height: 90),
                                ],
                              ),
                            ),
                      SizedBox(height: kDefaultPadding / 2),
                      Center(
                        child: Text(
                          'Addititonal Service',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      state.userData.adtService.isNotEmpty
                          ? Container(
                              height: 150,
                              child: CarouselSlider(
                                items: state.userData.adtService
                                    .map(
                                      (profileAdtService) => AdtServiceCard(
                                        profileAdtService: profileAdtService,
                                      ),
                                    )
                                    .toList(),
                                options: CarouselOptions(
                                  enableInfiniteScroll: false,
                                  enlargeCenterPage: true,
                                  viewportFraction: 0.80,
                                ),
                              ),
                            )
                          : Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 90),
                                  Text('Empty...'),
                                  SizedBox(height: 90),
                                ],
                              ),
                            ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class ProfileProgramCard extends StatelessWidget {
  const ProfileProgramCard({
    Key? key,
    required this.profileAsp,
  }) : super(key: key);
  final ProfileAsp profileAsp;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 3.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 4.0),
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: Colors.purpleAccent[700]!,
            width: 4,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'PROGRAM:',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'TIMES A WEEK:',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'PRICE:',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'STATUS:',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    profileAsp.programName,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    profileAsp.times,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$${profileAsp.price.toString()}',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  profileAsp.status == true
                      ? Text(
                          'Active',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : Text(
                          'Not active',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CampProgramCard extends StatelessWidget {
  const CampProgramCard({
    Key? key,
    required this.profileCamp,
  }) : super(key: key);
  final ProfileCamp profileCamp;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 3.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 4.0),
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: Colors.purpleAccent[700]!,
            width: 4,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
          child: profileCamp.fullDay == true
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Full Day Camp',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'PRICE:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '\$${profileCamp.price.toString()}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'STATUS:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          profileCamp.status == true
                              ? Text(
                                  'Active',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              : Text(
                                  'Not active',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                        ],
                      ),
                    ],
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'PROGRAM:',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'TIMES A WEEK:',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'FITNESS GROUP:',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'FITNESS TIMES A WEEK:',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'PRICE:',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'STATUS:',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          profileCamp.groupName,
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          profileCamp.times,
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        profileCamp.fitness == true
                            ? Icon(
                                Icons.check,
                                color: Colors.green,
                              )
                            : Icon(
                                Icons.close,
                                color: Colors.red,
                              ),
                        profileCamp.fitnessTimes.isEmpty
                            ? Icon(
                                Icons.close,
                                color: Colors.red,
                              )
                            : Text(
                                profileCamp.fitnessTimes,
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                        Text(
                          '${profileCamp.price.toString()}\$',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Active',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

class AdtServiceCard extends StatelessWidget {
  const AdtServiceCard({
    Key? key,
    required this.profileAdtService,
  }) : super(key: key);
  final ProfileAdtService profileAdtService;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 3.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 4.0),
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: Colors.purpleAccent[700]!,
            width: 4,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'PRIVATE TENNIS LESSON TIMES:',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'PRIVATE FITNESS LESSON TIMES:',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'PRICE:',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'STATUS:',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  profileAdtService.ptlTimes.isNotEmpty
                      ? Text(
                          profileAdtService.ptlTimes,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                  profileAdtService.pflTimes.isNotEmpty
                      ? Text(
                          profileAdtService.pflTimes,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                  Text(
                    '\$${profileAdtService.price.toString()}',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  profileAdtService.status == true
                      ? Text(
                          'Active',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : Text(
                          'Not active',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
