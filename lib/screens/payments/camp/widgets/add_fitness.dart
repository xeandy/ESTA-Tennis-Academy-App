import 'package:academy_app/business_logic/program_watcher/program_watcher_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants.dart';

class AddFitnessButton extends StatelessWidget {
  const AddFitnessButton({
    Key? key,
    required this.selectedState,
    required this.cubit,
  }) : super(key: key);

  final ProgramWatcherState selectedState;
  final ProgramWatcherCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Add fitness group',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.5,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          width: kDefaultPadding,
        ),
        BlocBuilder<ProgramWatcherCubit, ProgramWatcherState>(
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
              child: IconButton(
                splashRadius: 20,
                icon: selectedState.isVisible == false
                    ? Icon(Icons.add)
                    : Icon(Icons.remove),
                onPressed: selectedState.groupList.isNotEmpty
                    ? () {
                        cubit.setFitnessSessionList(state.fitness.session);
                      }
                    : null,
              ),
            );
          },
        )
      ],
    );
  }
}
