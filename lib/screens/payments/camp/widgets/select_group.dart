import 'package:academy_app/business_logic/program_watcher/program_watcher_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants.dart';

class GroupDropDownButton extends StatelessWidget {
  const GroupDropDownButton({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  final ProgramWatcherCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            hint: Row(
              children: [
                SizedBox(
                  width: kDefaultPadding,
                ),
                Text(
                  'Select Group',
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
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            items: state.groupList
                .map(
                  (camp) => DropdownMenuItem(
                    value: camp.programName,
                    child: Row(
                      children: [
                        SizedBox(
                          width: kDefaultPadding,
                        ),
                        Text(
                          camp.programName!,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      cubit.setSessionList(camp.session);
                    },
                  ),
                )
                .toList(),
            onChanged: (String? value) {
              cubit.onChangedCampProgramName(value);
            },
            value: cubit.campProgramvalue,
          );
        },
      ),
    );
  }
}
