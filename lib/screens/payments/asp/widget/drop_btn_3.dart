import 'package:academy_app/business_logic/program_watcher/asp_drop_button2/cubit/drop_button_cubit.dart';
import 'package:academy_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AspDropDownButton3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DropButtonCubit2>();
    return Column(
      children: [
        Divider(),
        SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.purpleAccent[700]!,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: BlocBuilder<DropButtonCubit2, DropButtonState2>(
            builder: (context, state) {
              return DropdownButtonFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                hint: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Select Program',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                icon: Icon(
                  Icons.arrow_drop_down,
                ),
                iconSize: 30,
                isExpanded: true,
                items: state.programs
                    .map(
                      (asp) => DropdownMenuItem(
                        value: asp.programName!,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              asp.programName!,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          context
                              .read<DropButtonCubit2>()
                              .setSessionList(asp.session);
                        },
                      ),
                    )
                    .toList(),
                onChanged: (String? value) {
                  context.read<DropButtonCubit2>().onChangedProgramName(value!);
                },
                value: state.programName,
              );
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              'Select times per week',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.5,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.purpleAccent[700]!,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: BlocBuilder<DropButtonCubit2, DropButtonState2>(
                builder: (context, state) {
                  return DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    hint: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        'Select',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    items: state.sessions
                        .map(
                          (session) => DropdownMenuItem(
                            value: session.times,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  session.times!,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              context.read<DropButtonCubit2>().setAspPrice(
                                    price: session.price!,
                                  );
                            },
                          ),
                        )
                        .toList(),
                    onChanged: (String? value) {
                      context
                          .read<DropButtonCubit2>()
                          .onChangedSessionValue(value);
                    },
                    value: context.read<DropButtonCubit2>().sessionValue,
                  );
                },
              ),
            ),
          ],
        ),
        SizedBox(height: kDefaultPadding),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Price',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: kDefaultPadding,
            ),
            Container(
              height: 40,
              width: 90,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.purpleAccent[700]!,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Center(
                child: Builder(
                  builder: (context) {
                    final state = context.watch<DropButtonCubit2>().state;

                    return Text(
                      '\$${cubit.sessionValue == null ? 0 : state.price.toString()}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
