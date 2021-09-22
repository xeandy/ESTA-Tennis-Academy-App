import 'package:academy_app/business_logic/sign_up/sign_up_cubit.dart';
import 'package:academy_app/screens/application/application_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../constants.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  String dob = '';

  String groupValue = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Application',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Muli",
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: kDefaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Complete Application Form',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: kDefaultPadding),
                  BlocBuilder<SignUpCubit, SignUpState>(
                    builder: (context, state) {
                      return Form(
                        autovalidateMode: state.showApplicationErrorMessage,
                        child: Column(
                          children: [
                            TextFormField(
                              style: TextStyle(fontSize: 16),
                              cursorHeight: 25,
                              cursorColor: Colors.purpleAccent[700],
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: applicationDecoration(
                                labelText: "Player's Full Name*",
                              ),
                              onChanged: (value) {
                                context
                                    .read<SignUpCubit>()
                                    .playerFullNameChanged(value);
                              },
                              validator: (_) => context
                                  .read<SignUpCubit>()
                                  .state
                                  .applicationForm
                                  .playerFullName
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
                                  ),
                            ),
                            SizedBox(height: kDefaultPadding),
                            GestureDetector(
                              onTap: () {
                                DatePicker.showDatePicker(
                                  context,
                                  theme: DatePickerTheme(
                                    itemStyle: TextStyle(fontSize: 14),
                                    doneStyle: TextStyle(
                                      color: Colors.purpleAccent[700]!,
                                    ),
                                  ),
                                  minTime: DateTime(1990),
                                  maxTime: DateTime(2050),
                                  onConfirm: (date) {
                                    var format = DateFormat('dd.MM.yyyy');
                                    var selectedDob = format.format(date);
                                    setState(() {
                                      dob = selectedDob;
                                    });
                                    context
                                        .read<SignUpCubit>()
                                        .dateOfBirhtChanged(selectedDob);
                                  },
                                  onChanged: (date) {
                                    var format = DateFormat('dd-MM-yyyy');
                                    var selectedDob = format.format(date);
                                    setState(() {
                                      dob = selectedDob;
                                    });
                                    context
                                        .read<SignUpCubit>()
                                        .dateOfBirhtChanged(selectedDob);
                                  },
                                  currentTime: DateTime.now(),
                                  locale: LocaleType.en,
                                );
                              },
                              child: Stack(
                                children: [
                                  AbsorbPointer(
                                    child: TextFormField(
                                      cursorColor: Colors.purpleAccent[700],
                                      decoration: applicationDecoration(
                                          labelText: 'Date of Birth*'),
                                      validator: (_) => context
                                          .read<SignUpCubit>()
                                          .state
                                          .applicationForm
                                          .playerFullName
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
                                          ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 25,
                                    left: 20,
                                    child: Text(
                                      dob,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: kDefaultPadding / 2),
                            Text(
                              'Tennis Level',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: kDefaultPadding / 2),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Radio<String>(
                                          activeColor: Colors.purpleAccent[700],
                                          value: 'Beginner',
                                          onChanged: (value) {
                                            setState(() {
                                              groupValue = value!;
                                            });
                                            context
                                                .read<SignUpCubit>()
                                                .levelChanged(value!);
                                          },
                                          groupValue: groupValue,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 3),
                                          child: Text(
                                            'Beginner',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: kDefaultPadding * 2),
                                    Row(
                                      children: [
                                        Radio<String>(
                                          activeColor: Colors.purpleAccent[700],
                                          value: 'Intermediate',
                                          onChanged: (value) {
                                            setState(() {
                                              groupValue = value!;
                                            });
                                            context
                                                .read<SignUpCubit>()
                                                .levelChanged(value!);
                                          },
                                          groupValue: groupValue,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 3),
                                          child: Text(
                                            'Intermediate',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: kDefaultPadding / 2),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Radio<String>(
                                          activeColor: Colors.purpleAccent[700],
                                          value: 'Advanced',
                                          onChanged: (value) {
                                            setState(() {
                                              groupValue = value!;
                                            });
                                            context
                                                .read<SignUpCubit>()
                                                .levelChanged(value!);
                                          },
                                          groupValue: groupValue,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 3),
                                          child: Text(
                                            'Advanced',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 31),
                                    Row(
                                      children: [
                                        Radio<String>(
                                          activeColor: Colors.purpleAccent[700],
                                          value: 'PRO',
                                          onChanged: (value) {
                                            setState(() {
                                              groupValue = value!;
                                            });
                                            context
                                                .read<SignUpCubit>()
                                                .levelChanged(value!);
                                          },
                                          groupValue: groupValue,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 3),
                                          child: Text(
                                            'PRO',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: kDefaultPadding),
                            TextFormField(
                              style: TextStyle(fontSize: 16),
                              cursorHeight: 25,
                              cursorColor: Colors.purpleAccent[700],
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: applicationDecoration(
                                labelText: "Parent 1 Full Name*",
                              ),
                              onChanged: (value) {
                                context
                                    .read<SignUpCubit>()
                                    .parentOneNameChnaged(value);
                              },
                              validator: (_) => context
                                  .read<SignUpCubit>()
                                  .state
                                  .applicationForm
                                  .parentOneName
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
                                  ),
                            ),
                            SizedBox(height: kDefaultPadding),
                            TextFormField(
                              style: TextStyle(fontSize: 16),
                              cursorHeight: 25,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(11),
                              ],
                              keyboardType: TextInputType.number,
                              cursorColor: Colors.purpleAccent[700],
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: applicationDecoration(
                                labelText: "Parent 1 Phone Number*",
                                prefix: '+ ',
                              ),
                              onChanged: (value) {
                                context
                                    .read<SignUpCubit>()
                                    .parentOnePhoneNumberChanged(value);
                              },
                              validator: (_) => context
                                  .read<SignUpCubit>()
                                  .state
                                  .applicationForm
                                  .parentOnePhoneNumber
                                  .value
                                  .fold(
                                    (failure) => failure.maybeMap(
                                      empty: (_) =>
                                          'Phone Number field can not be empty',
                                      exceedingLength: (_) =>
                                          'Exceeding length',
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),
                            SizedBox(height: kDefaultPadding),
                            TextFormField(
                              style: TextStyle(fontSize: 16),
                              cursorHeight: 25,
                              cursorColor: Colors.purpleAccent[700],
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: applicationDecoration(
                                labelText: "Parent 2 Full Name*",
                              ),
                              onChanged: (value) {
                                context
                                    .read<SignUpCubit>()
                                    .parentTwoNameChanged(value);
                              },
                              validator: (_) => context
                                  .read<SignUpCubit>()
                                  .state
                                  .applicationForm
                                  .parentTwoName
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
                                  ),
                            ),
                            SizedBox(height: kDefaultPadding),
                            TextFormField(
                              style: TextStyle(fontSize: 16),
                              cursorHeight: 25,
                              keyboardType: TextInputType.number,
                              cursorColor: Colors.purpleAccent[700],
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(11),
                              ],
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: applicationDecoration(
                                labelText: "Parent 2 Phone Number*",
                                prefix: '+ ',
                              ),
                              onChanged: (value) {
                                context
                                    .read<SignUpCubit>()
                                    .parentTwopPhoneNumberChanged(value);
                              },
                              validator: (_) => context
                                  .read<SignUpCubit>()
                                  .state
                                  .applicationForm
                                  .parentTwoPhoneNumber
                                  .value
                                  .fold(
                                    (failure) => failure.maybeMap(
                                      empty: (_) =>
                                          'Phone Number field can not be empty',
                                      exceedingLength: (_) =>
                                          'Exceeding length',
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),
                            SizedBox(height: kDefaultPadding),
                            TextFormField(
                              style: TextStyle(fontSize: 16),
                              cursorHeight: 25,
                              maxLines: 2,
                              cursorColor: Colors.purpleAccent[700],
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: applicationDecoration(
                                labelText: "Home Address*",
                              ),
                              onChanged: (value) {
                                context
                                    .read<SignUpCubit>()
                                    .homeAddressChanged(value);
                              },
                              validator: (_) => context
                                  .read<SignUpCubit>()
                                  .state
                                  .applicationForm
                                  .homeAddress
                                  .value
                                  .fold(
                                    (failure) => failure.maybeMap(
                                      empty: (_) =>
                                          'Home address field can not be empty',
                                      exceedingLength: (_) =>
                                          'Exceeding length',
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),
                            SizedBox(height: kDefaultPadding),
                            TextFormField(
                              style: TextStyle(fontSize: 16),
                              cursorHeight: 25,
                              cursorColor: Colors.purpleAccent[700],
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: applicationDecoration(
                                labelText: "City*",
                              ),
                              onChanged: (value) {
                                context.read<SignUpCubit>().cityChanged(value);
                              },
                              validator: (_) => context
                                  .read<SignUpCubit>()
                                  .state
                                  .applicationForm
                                  .city
                                  .value
                                  .fold(
                                    (failure) => failure.maybeMap(
                                      empty: (_) =>
                                          'City field can not be empty',
                                      exceedingLength: (_) =>
                                          'Exceeding length',
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),
                            SizedBox(height: kDefaultPadding),
                            TextFormField(
                              style: TextStyle(fontSize: 16),
                              cursorHeight: 25,
                              cursorColor: Colors.purpleAccent[700],
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: applicationDecoration(
                                labelText: "State*",
                              ),
                              onChanged: (value) {
                                context
                                    .read<SignUpCubit>()
                                    .countryStateChanged(value);
                              },
                              validator: (_) => context
                                  .read<SignUpCubit>()
                                  .state
                                  .applicationForm
                                  .countryState
                                  .value
                                  .fold(
                                    (failure) => failure.maybeMap(
                                      empty: (_) =>
                                          'State field can not be empty',
                                      exceedingLength: (_) =>
                                          'Exceeding length',
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),
                            SizedBox(height: kDefaultPadding),
                            TextFormField(
                              style: TextStyle(fontSize: 16),
                              cursorHeight: 25,
                              keyboardType: TextInputType.number,
                              cursorColor: Colors.purpleAccent[700],
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: applicationDecoration(
                                labelText: "Zip Code*",
                              ),
                              onChanged: (value) {
                                context
                                    .read<SignUpCubit>()
                                    .zipCodeChanged(value);
                              },
                              validator: (_) => context
                                  .read<SignUpCubit>()
                                  .state
                                  .applicationForm
                                  .zipCode
                                  .value
                                  .fold(
                                    (failure) => failure.maybeMap(
                                      empty: (_) =>
                                          'Zip Code field can not be empty',
                                      exceedingLength: (_) =>
                                          'Exceeding length',
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),
                            SizedBox(height: kDefaultPadding),
                            TextFormField(
                              style: TextStyle(fontSize: 16),
                              cursorHeight: 25,
                              cursorColor: Colors.purpleAccent[700],
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: applicationDecoration(
                                labelText: "Preferred Email*",
                              ),
                              onChanged: (value) {
                                context
                                    .read<SignUpCubit>()
                                    .preferredEmailChanged(value);
                              },
                              validator: (_) => context
                                  .read<SignUpCubit>()
                                  .state
                                  .applicationForm
                                  .preferredEmail
                                  .value
                                  .fold(
                                    (failure) => failure.maybeMap(
                                      empty: (_) =>
                                          'Preferred Email field can not be empty',
                                      exceedingLength: (_) =>
                                          'Exceeding length',
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),
                            SizedBox(height: kDefaultPadding),
                            TextFormField(
                              style: TextStyle(fontSize: 16),
                              cursorHeight: 25,
                              cursorColor: Colors.purpleAccent[700],
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: applicationDecoration(
                                labelText: "Native Language*",
                              ),
                              onChanged: (value) {
                                context
                                    .read<SignUpCubit>()
                                    .nativeLanguageChanged(value);
                              },
                              validator: (_) => context
                                  .read<SignUpCubit>()
                                  .state
                                  .applicationForm
                                  .nativeLanguage
                                  .value
                                  .fold(
                                    (failure) => failure.maybeMap(
                                      empty: (_) =>
                                          'Native Language field can not be empty',
                                      exceedingLength: (_) =>
                                          'Exceeding length',
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),
                            SizedBox(height: kDefaultPadding / 2),
                            Text(
                              'Emergency Contact*',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: kDefaultPadding),
                            TextFormField(
                              style: TextStyle(fontSize: 16),
                              cursorHeight: 25,
                              cursorColor: Colors.purpleAccent[700],
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: applicationDecoration(
                                labelText: "Full Name*",
                              ),
                              onChanged: (value) {
                                context
                                    .read<SignUpCubit>()
                                    .emergencyNameChanged(value);
                              },
                              validator: (_) => context
                                  .read<SignUpCubit>()
                                  .state
                                  .applicationForm
                                  .emergencyName
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
                                  ),
                            ),
                            SizedBox(height: kDefaultPadding),
                            TextFormField(
                              style: TextStyle(fontSize: 16),
                              cursorHeight: 25,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(11),
                              ],
                              cursorColor: Colors.purpleAccent[700],
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: applicationDecoration(
                                labelText: "Phone Number*",
                                prefix: '+ ',
                              ),
                              onChanged: (value) {
                                context
                                    .read<SignUpCubit>()
                                    .emergencyPhoneNumberChanged(value);
                              },
                              validator: (_) => context
                                  .read<SignUpCubit>()
                                  .state
                                  .applicationForm
                                  .emergencyPhoneNumber
                                  .value
                                  .fold(
                                    (failure) => failure.maybeMap(
                                      empty: (_) =>
                                          'Phone Number field can not be empty',
                                      exceedingLength: (_) =>
                                          'Exceeding length',
                                      orElse: () => null,
                                    ),
                                    (_) => null,
                                  ),
                            ),
                            SizedBox(height: kDefaultPadding),
                            TextFormField(
                              style: TextStyle(fontSize: 16),
                              cursorHeight: 25,
                              cursorColor: Colors.purpleAccent[700],
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: applicationDecoration(
                                labelText: "Relationship to the player*",
                              ),
                              onChanged: (value) {
                                context
                                    .read<SignUpCubit>()
                                    .relationshipPlayerChanged(value);
                              },
                              validator: (_) => context
                                  .read<SignUpCubit>()
                                  .state
                                  .applicationForm
                                  .relationshipPlayer
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
                                  ),
                            ),
                            SizedBox(height: kDefaultPadding / 2),
                            Text(
                              'How did you hear about us?',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: kDefaultPadding / 2),
                            TextFormField(
                              style: TextStyle(fontSize: 16),
                              cursorHeight: 25,
                              maxLines: 2,
                              cursorColor: Colors.purpleAccent[700],
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: applicationDecoration(labelText: ''),
                              onChanged: (value) {
                                context
                                    .read<SignUpCubit>()
                                    .hearAboutUsChanged(value);
                              },
                            ),
                            SizedBox(height: kDefaultPadding),
                            Text(
                              'Allergies, disabilities ,conditions or illness coaches should know about?',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: kDefaultPadding / 2),
                            TextFormField(
                              style: TextStyle(fontSize: 16),
                              maxLines: 2,
                              cursorHeight: 25,
                              cursorColor: Colors.purpleAccent[700],
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: applicationDecoration(
                                labelText: "",
                              ),
                              onChanged: (value) {
                                context
                                    .read<SignUpCubit>()
                                    .aboutHealthChanged(value);
                              },
                            ),
                            SizedBox(height: kDefaultPadding),
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.purpleAccent[700],
                                minimumSize: Size(size.width, 0),
                                padding: EdgeInsets.symmetric(vertical: 10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(22),
                                  ),
                                ),
                              ),
                              onPressed: () async {
                                var validate = await context
                                    .read<SignUpCubit>()
                                    .validateApplicationForm();
                                if (validate) {
                                  Navigator.pushNamed(context, '/signUp');
                                }
                              },
                              child: Text(
                                'Continue',
                                style: TextStyle(
                                  color: kBgLightColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
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
      ),
    );
  }
}
