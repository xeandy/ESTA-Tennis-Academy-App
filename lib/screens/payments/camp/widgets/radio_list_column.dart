import 'package:academy_app/business_logic/program_watcher/program_watcher_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RadioListColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProgramWatcherCubit>();
    final selectedState = context.select(
        (ProgramWatcherCubit programWatcherCubit) => programWatcherCubit.state);
    return BlocBuilder<ProgramWatcherCubit, ProgramWatcherState>(
      builder: (context, state) {
        return Column(
          children: [
            RadioListTile<int>(
              title: Text(
                'Member of After-School Program',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              activeColor: Colors.purpleAccent[700],
              value: 1,
              groupValue: selectedState.radioButtonGroupValue,
              onChanged: (value) {
                cubit.radioButtonOnChanged(
                  value: value!,
                  groupList: state.aspMember,
                );
              },
            ),
            Divider(),
            RadioListTile<int>(
              title: Text(
                'Non Member',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              activeColor: Colors.purpleAccent[700],
              value: 2,
              groupValue: selectedState.radioButtonGroupValue,
              onChanged: (value) {
                cubit.radioButtonOnChanged(
                  value: value!,
                  groupList: state.nonMember,
                );
              },
            ),
          ],
        );
      },
    );
  }
}
