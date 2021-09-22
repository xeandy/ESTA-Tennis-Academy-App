import 'package:academy_app/admin/business_logic/get_application_form/get_application_form_cubit.dart';
import 'package:academy_app/admin/business_logic/get_users/get_users_cubit.dart';
import 'package:academy_app/admin/screens/application_details.dart';
import 'package:academy_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';

class Users extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GetUsersCubit, GetUsersState>(
        builder: (context, state) {
          return state.maybeMap(
              initial: (state) => Container(),
              orElse: () => Container(),
              loadFailure: (state) => Center(
                    child: Text(
                      state.userDataFailure.maybeMap(
                        insufficientPermission: (_) =>
                            'Insufficient Permission',
                        orElse: () =>
                            'Unexpected Error. \nPlease contact support ',
                      ),
                    ),
                  ),
              loadSuccess: (state) {
                return SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding,
                          vertical: kDefaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SearchWidget(
                            hintText: 'search',
                            onChanged: (value) {
                              context
                                  .read<GetUsersCubit>()
                                  .listChanged(state.users, value);
                            },
                            text: context.watch<GetUsersCubit>().query,
                          ),
                          DataTable(
                            dataRowHeight: 60,
                            columns: [
                              DataColumn(
                                label: Text('№'),
                              ),
                              DataColumn(
                                label: Text('Name'),
                              ),
                              DataColumn(
                                label: Text('Status'),
                              ),
                              DataColumn(
                                label: Text('Details'),
                              ),
                            ],
                            rows:
                                context.watch<GetUsersCubit>().filterUsers.map(
                              (user) {
                                int numeric = state.users.indexOf(user) + 1;
                                return DataRow(
                                  cells: [
                                    DataCell(
                                      Text(
                                        numeric.toString(),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        user.userName!.getOrCrash(),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      user.asp.isEmpty &&
                                              user.camp.isEmpty &&
                                              user.adtService.isEmpty
                                          ? Container(
                                              width: 80,
                                              child: Text(
                                                'None',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            )
                                          : TextButton(
                                              style: TextButton.styleFrom(
                                                  primary: Colors.white,
                                                  backgroundColor:
                                                      Colors.purpleAccent[700],
                                                  textStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                              onPressed: () {
                                                showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return Dialog(
                                                      child: Container(
                                                        width: 200,
                                                        height: 500,
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                              horizontal:
                                                                  kDefaultPadding,
                                                              vertical:
                                                                  kDefaultPadding,
                                                            ),
                                                            child: Column(
                                                              children: [
                                                                Text(
                                                                  'ASP',
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ),
                                                                Container(
                                                                  child:
                                                                      DataTable(
                                                                    columns: [
                                                                      DataColumn(
                                                                        label:
                                                                            Text(
                                                                          'Name',
                                                                        ),
                                                                      ),
                                                                      DataColumn(
                                                                        label:
                                                                            Text(
                                                                          'Status',
                                                                        ),
                                                                      ),
                                                                    ],
                                                                    rows: user
                                                                        .asp
                                                                        .map(
                                                                          (asp) =>
                                                                              DataRow(
                                                                            cells: [
                                                                              DataCell(
                                                                                  // user.asp.isNotEmpty
                                                                                  //     ?
                                                                                  Text(
                                                                                asp.programName,
                                                                                style: TextStyle(
                                                                                  color: Colors.black,
                                                                                ),
                                                                              )
                                                                                  // :
                                                                                  // Text('empty'),
                                                                                  ),
                                                                              DataCell(
                                                                                asp.status
                                                                                    ? Text(
                                                                                        'Active',
                                                                                        style: TextStyle(
                                                                                          color: Colors.green,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                      )
                                                                                    : Text(
                                                                                        'Not active',
                                                                                        style: TextStyle(
                                                                                          color: Colors.red,
                                                                                        ),
                                                                                      ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        )
                                                                        .toList(),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    height:
                                                                        kDefaultPadding /
                                                                            2),
                                                                Divider(),
                                                                Text(
                                                                  'Camp',
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ),
                                                                Container(
                                                                  child:
                                                                      DataTable(
                                                                    columns: [
                                                                      DataColumn(
                                                                        label: Text(
                                                                            'Name'),
                                                                      ),
                                                                      DataColumn(
                                                                        label: Text(
                                                                            'Status'),
                                                                      ),
                                                                    ],
                                                                    rows: user
                                                                        .camp
                                                                        .map(
                                                                          (camp) =>
                                                                              DataRow(
                                                                            cells: [
                                                                              DataCell(
                                                                                Text(
                                                                                  camp.groupName,
                                                                                  style: TextStyle(
                                                                                    color: Colors.black,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              DataCell(
                                                                                camp.status
                                                                                    ? Text(
                                                                                        'Active',
                                                                                        style: TextStyle(
                                                                                          color: Colors.green,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                      )
                                                                                    : Text('Not active'),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        )
                                                                        .toList(),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                    height:
                                                                        kDefaultPadding /
                                                                            2),
                                                                Divider(),
                                                                Text(
                                                                  'Additional Service',
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ),
                                                                Container(
                                                                  child:
                                                                      DataTable(
                                                                    columns: [
                                                                      DataColumn(
                                                                        label: Text(
                                                                            'Name'),
                                                                      ),
                                                                      DataColumn(
                                                                        label: Text(
                                                                            'Status'),
                                                                      ),
                                                                    ],
                                                                    rows: user
                                                                        .adtService
                                                                        .map(
                                                                          (adt) =>
                                                                              DataRow(
                                                                            cells: [
                                                                              DataCell(
                                                                                Text(
                                                                                  'Additional Service',
                                                                                  style: TextStyle(
                                                                                    color: Colors.black,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              DataCell(
                                                                                adt.status
                                                                                    ? Text(
                                                                                        'Active',
                                                                                        style: TextStyle(
                                                                                          color: Colors.green,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                      )
                                                                                    : Text('Not active'),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        )
                                                                        .toList(),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: Text('Check'),
                                            ),
                                    ),
                                    DataCell(
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      BlocProvider<
                                                          GetApplicationFormCubit>(
                                                        create: (context) => getIt<
                                                            GetApplicationFormCubit>()
                                                          ..getApplicationForm(
                                                              user.id
                                                                  .getOrCrash()),
                                                        child:
                                                            ApplicationDetails(),
                                                      )));
                                        },
                                        child: Text('Details'),
                                        style: TextButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor:
                                              Colors.purpleAccent[700],
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}

class SearchWidget extends StatefulWidget {
  final String text;
  final ValueChanged<String> onChanged;
  final String hintText;

  const SearchWidget({
    Key? key,
    required this.text,
    required this.onChanged,
    required this.hintText,
  }) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final styleActive = TextStyle(color: Colors.black);
    final styleHint = TextStyle(color: Colors.black54);
    final style = widget.text.isEmpty ? styleHint : styleActive;

    return Container(
      height: 50,
      width: 250,
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: Colors.black26),
      ),
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(Icons.search, color: style.color),
          suffixIcon: widget.text.isNotEmpty
              ? GestureDetector(
                  child: Icon(Icons.close, color: style.color),
                  onTap: () {
                    controller.clear();
                    widget.onChanged('');
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                )
              : null,
          hintText: widget.hintText,
          border: InputBorder.none,
        ),
        onChanged: widget.onChanged,
      ),
    );
  }
}
