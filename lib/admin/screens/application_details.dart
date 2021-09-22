import 'package:academy_app/admin/business_logic/get_application_form/get_application_form_cubit.dart';
import 'package:academy_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApplicationDetails extends StatelessWidget {
  const ApplicationDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<GetApplicationFormCubit, GetApplicationFormState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => Container(),
              loadInProgress: (_) => CircularProgressIndicator(),
              loadFailure: (state) => Text('error'),
              loadSuccess: (state) => Padding(
                padding: EdgeInsets.symmetric(
                  vertical: kDefaultPadding,
                  horizontal: kDefaultPadding,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Created on:',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            state.applicationForm.createdOn,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          'Player name:',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            state.applicationForm.playerFullName.getOrCrash(),
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          'Date of birth:',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          state.applicationForm.dateOfBirth.getOrCrash(),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          'Tennis Level:',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          state.applicationForm.level,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          'Parent 1 name:',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          state.applicationForm.parentOneName.getOrCrash(),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Divider(),
                    Text(
                      'Parent 1 phone number:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      state.applicationForm.parentOnePhoneNumber.getOrCrash(),
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          'Parent 2 name:',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          state.applicationForm.parentTwoName.getOrCrash(),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Divider(),
                    Text(
                      'Parent 2 phone number:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      state.applicationForm.parentTwoPhoneNumber.getOrCrash(),
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Divider(),
                    Text(
                      'Home address:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      state.applicationForm.homeAddress.getOrCrash(),
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          'City:',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          state.applicationForm.city.getOrCrash(),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          'State:',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          state.applicationForm.countryState.getOrCrash(),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          'Zip Code:',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          state.applicationForm.zipCode.getOrCrash(),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Divider(),
                    Text(
                      'Preferred email:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      state.applicationForm.preferredEmail.getOrCrash(),
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          'Native language:',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          state.applicationForm.nativeLanguage.getOrCrash(),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Divider(),
                    Center(
                      child: Text(
                        'Emergency Contact',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Row(
                      children: [
                        Text(
                          'Name:',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          state.applicationForm.emergencyName.getOrCrash(),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          'Phone number:',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          state.applicationForm.emergencyPhoneNumber
                              .getOrCrash(),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Divider(),
                    Text(
                      'Relationship to the player:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      state.applicationForm.relationshipPlayer.getOrCrash(),
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Divider(),
                    Text(
                      'How did you hear about us?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      state.applicationForm.hearAboutUs!,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Divider(),
                    Text(
                      'Allergies, disabilities, conditions or illness:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      state.applicationForm.aboutHealth!,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: kDefaultPadding),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
