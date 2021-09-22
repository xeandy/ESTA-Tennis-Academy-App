import 'dart:io';

import 'package:academy_app/admin/business_logic/get_application_form/get_application_form_cubit.dart';
import 'package:academy_app/business_logic/user/update_user/update_user_cubit.dart';
import 'package:academy_app/constants.dart';
import 'package:academy_app/model/user_data/user_data.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key, required this.userData}) : super(key: key);
  final UserData userData;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Text(
            'Edit Profile',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyPickImage(),
                SizedBox(height: kDefaultPadding),
                BlocConsumer<UpdateUserCubit, UpdateUserState>(
                  listener: (context, state) {
                    if (state.isUpload == true) {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return MyShowDialog();
                        },
                      );
                    }
                    if (state.isComplete == true) {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/home', (route) => false);
                    }
                  },
                  builder: (context, state) {
                    return Form(
                      autovalidateMode: state.showErrorMessage,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              errorStyle: TextStyle(fontSize: 15),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              prefixIcon: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                child: SvgPicture.asset(
                                  'assets/icons/user.svg',
                                  height: 25,
                                  color: Colors.purpleAccent[700],
                                ),
                              ),
                              prefixStyle:
                                  TextStyle(color: Colors.black, fontSize: 16),
                              hintText: 'Enter your name',
                              labelText: 'Name',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),
                                borderSide: BorderSide(
                                  color: Colors.purpleAccent[700]!,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),
                                borderSide: BorderSide(
                                  color: Colors.purpleAccent[700]!,
                                  width: 2,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 2,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.purpleAccent[700]!,
                                  width: 2,
                                ),
                              ),
                            ),
                            onChanged: (value) => context
                                .read<UpdateUserCubit>()
                                .userNameChanged(value),
                            initialValue: userData.userName!.getOrCrash(),
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return context
                                    .read<UpdateUserCubit>()
                                    .state
                                    .userName
                                    .value
                                    .fold(
                                      (failure) => failure.maybeMap(
                                        empty: (_) =>
                                            'Name field can not be empty',
                                        exceedingLength: (_) =>
                                            'Exceeding length',
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    );
                              }
                            },
                          ),
                          SizedBox(height: kDefaultPadding),
                          BlocBuilder<GetApplicationFormCubit,
                              GetApplicationFormState>(
                            builder: (context, state) {
                              return state.maybeMap(
                                orElse: () => Container(),
                                loadFailure: (state) => Center(
                                  child: Text(
                                    state.applicationFormFailure.maybeMap(
                                      insufficientPermission: (_) =>
                                          'Insufficient Permission',
                                      orElse: () =>
                                          'Unexpected Error. \nPlease contact support ',
                                    ),
                                  ),
                                ),
                                loadSuccess: (state) {
                                  return Column(
                                    children: [
                                      TextFormField(
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(11),
                                        ],
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          errorStyle: TextStyle(fontSize: 15),
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.always,
                                          prefixIcon: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 20, 10, 20),
                                            child: SvgPicture.asset(
                                              'assets/icons/user.svg',
                                              height: 25,
                                              color: Colors.purpleAccent[700],
                                            ),
                                          ),
                                          prefixStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                          hintText: 'Enter phone number',
                                          labelText: 'Parent 1 Phone Number',
                                          prefixText: '+ ',
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            borderSide: BorderSide(
                                              color: Colors.purpleAccent[700]!,
                                              width: 2,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            borderSide: BorderSide(
                                              color: Colors.purpleAccent[700]!,
                                              width: 2,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2,
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: BorderSide(
                                              color: Colors.purpleAccent[700]!,
                                              width: 2,
                                            ),
                                          ),
                                        ),
                                        onChanged: (value) => context
                                            .read<UpdateUserCubit>()
                                            .parent1PhoneNumberChanged(value),
                                        initialValue: state.applicationForm
                                            .parentOnePhoneNumber
                                            .getOrCrash(),
                                        validator: (String? value) {
                                          if (value!.isEmpty) {
                                            return context
                                                .read<UpdateUserCubit>()
                                                .state
                                                .parentOnePhoneNumber
                                                .value
                                                .fold(
                                                  (failure) => failure.maybeMap(
                                                    empty: (_) =>
                                                        'This field can not be empty',
                                                    exceedingLength: (_) =>
                                                        'Exceeding length',
                                                    orElse: () => null,
                                                  ),
                                                  (_) => null,
                                                );
                                          }
                                        },
                                      ),
                                      SizedBox(height: kDefaultPadding),
                                      TextFormField(
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(11),
                                        ],
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          errorStyle: TextStyle(fontSize: 15),
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.always,
                                          prefixIcon: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 20, 10, 20),
                                            child: SvgPicture.asset(
                                              'assets/icons/user.svg',
                                              height: 25,
                                              color: Colors.purpleAccent[700],
                                            ),
                                          ),
                                          prefixStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                          hintText: 'Enter phone number',
                                          labelText: 'Parent 2 Phone Number',
                                          prefixText: '+ ',
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            borderSide: BorderSide(
                                              color: Colors.purpleAccent[700]!,
                                              width: 2,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            borderSide: BorderSide(
                                              color: Colors.purpleAccent[700]!,
                                              width: 2,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2,
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: BorderSide(
                                              color: Colors.purpleAccent[700]!,
                                              width: 2,
                                            ),
                                          ),
                                        ),
                                        onChanged: (value) => context
                                            .read<UpdateUserCubit>()
                                            .parent2PhoneNumberChanged(value),
                                        initialValue: state.applicationForm
                                            .parentTwoPhoneNumber
                                            .getOrCrash(),
                                        validator: (String? value) {
                                          if (value!.isEmpty) {
                                            return context
                                                .read<UpdateUserCubit>()
                                                .state
                                                .parentTwoPhoneNumber
                                                .value
                                                .fold(
                                                  (failure) => failure.maybeMap(
                                                    empty: (_) =>
                                                        'This field can not be empty',
                                                    exceedingLength: (_) =>
                                                        'Exceeding length',
                                                    orElse: () => null,
                                                  ),
                                                  (_) => null,
                                                );
                                          }
                                        },
                                      ),
                                      SizedBox(height: kDefaultPadding),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          errorStyle: TextStyle(fontSize: 15),
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.always,
                                          prefixIcon: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 20, 10, 20),
                                            child: SvgPicture.asset(
                                              'assets/icons/user.svg',
                                              height: 25,
                                              color: Colors.purpleAccent[700],
                                            ),
                                          ),
                                          prefixStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                          hintText: 'Enter home address',
                                          labelText: 'Home Address',
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            borderSide: BorderSide(
                                              color: Colors.purpleAccent[700]!,
                                              width: 2,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            borderSide: BorderSide(
                                              color: Colors.purpleAccent[700]!,
                                              width: 2,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2,
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: BorderSide(
                                              color: Colors.purpleAccent[700]!,
                                              width: 2,
                                            ),
                                          ),
                                        ),
                                        onChanged: (value) => context
                                            .read<UpdateUserCubit>()
                                            .homeAddressChanged(value),
                                        initialValue: state
                                            .applicationForm.homeAddress
                                            .getOrCrash(),
                                        validator: (String? value) {
                                          if (value!.isEmpty) {
                                            return context
                                                .read<UpdateUserCubit>()
                                                .state
                                                .homeAddress
                                                .value
                                                .fold(
                                                  (failure) => failure.maybeMap(
                                                    empty: (_) =>
                                                        'This field can not be empty',
                                                    exceedingLength: (_) =>
                                                        'Exceeding length',
                                                    orElse: () => null,
                                                  ),
                                                  (_) => null,
                                                );
                                          }
                                        },
                                      ),
                                      SizedBox(height: kDefaultPadding),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          errorStyle: TextStyle(fontSize: 15),
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.always,
                                          prefixIcon: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 20, 10, 20),
                                            child: SvgPicture.asset(
                                              'assets/icons/user.svg',
                                              height: 25,
                                              color: Colors.purpleAccent[700],
                                            ),
                                          ),
                                          prefixStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                          hintText: 'Enter email',
                                          labelText: 'Preferred Email',
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            borderSide: BorderSide(
                                              color: Colors.purpleAccent[700]!,
                                              width: 2,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            borderSide: BorderSide(
                                              color: Colors.purpleAccent[700]!,
                                              width: 2,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2,
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: BorderSide(
                                              color: Colors.purpleAccent[700]!,
                                              width: 2,
                                            ),
                                          ),
                                        ),
                                        onChanged: (value) => context
                                            .read<UpdateUserCubit>()
                                            .preferredEmailChanged(value),
                                        initialValue: state
                                            .applicationForm.preferredEmail
                                            .getOrCrash(),
                                        validator: (String? value) {
                                          if (value!.isEmpty) {
                                            return context
                                                .read<UpdateUserCubit>()
                                                .state
                                                .preferredEmail
                                                .value
                                                .fold(
                                                  (failure) => failure.maybeMap(
                                                    empty: (_) =>
                                                        'This field can not be empty',
                                                    exceedingLength: (_) =>
                                                        'Exceeding length',
                                                    orElse: () => null,
                                                  ),
                                                  (_) => null,
                                                );
                                          }
                                        },
                                      ),
                                      SizedBox(height: kDefaultPadding / 2),
                                      Text(
                                        'Emergency Contact',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: kDefaultPadding / 2),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          errorStyle: TextStyle(fontSize: 15),
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.always,
                                          prefixIcon: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 20, 10, 20),
                                            child: SvgPicture.asset(
                                              'assets/icons/user.svg',
                                              height: 25,
                                              color: Colors.purpleAccent[700],
                                            ),
                                          ),
                                          prefixStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                          hintText: 'Enter your name',
                                          labelText: 'Name',
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            borderSide: BorderSide(
                                              color: Colors.purpleAccent[700]!,
                                              width: 2,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            borderSide: BorderSide(
                                              color: Colors.purpleAccent[700]!,
                                              width: 2,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2,
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: BorderSide(
                                              color: Colors.purpleAccent[700]!,
                                              width: 2,
                                            ),
                                          ),
                                        ),
                                        onChanged: (value) => context
                                            .read<UpdateUserCubit>()
                                            .emergencyNameChanged(value),
                                        initialValue: state
                                            .applicationForm.emergencyName
                                            .getOrCrash(),
                                        validator: (String? value) {
                                          if (value!.isEmpty) {
                                            return context
                                                .read<UpdateUserCubit>()
                                                .state
                                                .emergencyName
                                                .value
                                                .fold(
                                                  (failure) => failure.maybeMap(
                                                    empty: (_) =>
                                                        'This field can not be empty',
                                                    exceedingLength: (_) =>
                                                        'Exceeding length',
                                                    orElse: () => null,
                                                  ),
                                                  (_) => null,
                                                );
                                          }
                                        },
                                      ),
                                      SizedBox(height: kDefaultPadding),
                                      TextFormField(
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(11),
                                        ],
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          errorStyle: TextStyle(fontSize: 15),
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.always,
                                          prefixIcon: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 20, 10, 20),
                                            child: SvgPicture.asset(
                                              'assets/icons/user.svg',
                                              height: 25,
                                              color: Colors.purpleAccent[700],
                                            ),
                                          ),
                                          prefixStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                          hintText: 'Enter phone number',
                                          labelText: 'Phone Number',
                                          prefixText: '+ ',
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            borderSide: BorderSide(
                                              color: Colors.purpleAccent[700]!,
                                              width: 2,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            borderSide: BorderSide(
                                              color: Colors.purpleAccent[700]!,
                                              width: 2,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: BorderSide(
                                              color: Colors.red,
                                              width: 2,
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: BorderSide(
                                              color: Colors.purpleAccent[700]!,
                                              width: 2,
                                            ),
                                          ),
                                        ),
                                        onChanged: (value) => context
                                            .read<UpdateUserCubit>()
                                            .emergencyPhoneNumberChanged(value),
                                        initialValue: state.applicationForm
                                            .emergencyPhoneNumber
                                            .getOrCrash(),
                                        validator: (String? value) {
                                          if (value!.isEmpty) {
                                            return context
                                                .read<UpdateUserCubit>()
                                                .state
                                                .emergencyPhoneNumber
                                                .value
                                                .fold(
                                                  (failure) => failure.maybeMap(
                                                    empty: (_) =>
                                                        'This field can not be empty',
                                                    exceedingLength: (_) =>
                                                        'Exceeding length',
                                                    orElse: () => null,
                                                  ),
                                                  (_) => null,
                                                );
                                          }
                                        },
                                      ),
                                      SizedBox(height: kDefaultPadding),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor:
                                              Colors.purpleAccent[700],
                                          minimumSize: Size(100, 0),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(22),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          context
                                              .read<UpdateUserCubit>()
                                              .updateUser(userData,
                                                  state.applicationForm);
                                        },
                                        child: Text(
                                          'Save',
                                          style: TextStyle(
                                            color: kBgLightColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                          SizedBox(height: kDefaultPadding),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyShowDialog extends StatelessWidget {
  const MyShowDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(22),
          ),
          border: Border.all(
            color: Colors.purpleAccent[700]!,
            width: 3,
          ),
        ),
        width: 180,
        height: 120,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                color: Colors.purpleAccent[700],
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              Text(
                'Upload image...',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyPickImage extends StatelessWidget {
  const MyPickImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 70,
        backgroundColor: Colors.purpleAccent[700],
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 68,
          child: Builder(
            builder: (context) {
              final userUpdateState = context.watch<UpdateUserCubit>().state;
              if (userUpdateState.img.path.isEmpty) {
                return IconButton(
                  color: kBgDarkColor,
                  iconSize: 50,
                  icon: Icon(
                    Icons.add_a_photo,
                  ),
                  onPressed: () {
                    context.read<UpdateUserCubit>().pickImage();
                  },
                );
              } else {
                return ClipOval(
                  child: Image.file(
                    File(userUpdateState.img.path),
                    fit: BoxFit.cover,
                    width: 200,
                    height: 200,
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
