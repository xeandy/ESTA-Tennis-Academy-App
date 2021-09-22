import 'package:academy_app/business_logic/program_watcher/program_watcher_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants.dart';

class SelectTimesDropDownButton extends StatelessWidget {
  const SelectTimesDropDownButton({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  final ProgramWatcherCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Select times a week',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.5,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          width: kDefaultPadding,
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
          child: BlocBuilder<ProgramWatcherCubit, ProgramWatcherState>(
            builder: (context, state) {
              return DropdownButtonFormField(
                hint: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Select',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
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
                          cubit.setCampPrice(
                            groupPrice: session.price!,
                          );
                        },
                      ),
                    )
                    .toList(),
                onChanged: (String? value) {
                  cubit.onChanged(value);
                },
                value: cubit.sessionValue,
              );
            },
          ),
        ),
      ],
    );
  }
}
