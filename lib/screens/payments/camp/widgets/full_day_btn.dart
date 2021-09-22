import 'package:academy_app/business_logic/program_watcher/program_watcher_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FullDayButton extends StatelessWidget {
  const FullDayButton({
    Key? key,
    required this.selectedState,
    required this.cubit,
  }) : super(key: key);

  final ProgramWatcherState selectedState;
  final ProgramWatcherCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProgramWatcherCubit, ProgramWatcherState>(
      builder: (context, state) {
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
          child: Column(
            children: [
              RadioListTile<int>(
                title: Text(
                  state.fullDay.name!,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                activeColor: Colors.purpleAccent[700],
                value: 3,
                groupValue: selectedState.radioButtonGroupValue,
                onChanged: (value) {
                  cubit.radioButtonOnChanged(
                    value: value!,
                    groupList: [],
                  );
                  cubit.setFullDayPrice(state.fullDay.price!);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
