import 'package:academy_app/business_logic/program_watcher/program_watcher_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class PaymentBody extends StatelessWidget {
  const PaymentBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocProvider<ProgramWatcherCubit>(
      create: (context) => getIt<ProgramWatcherCubit>(),
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/aspPayment');
                    },
                    child: Container(
                        width: size.width,
                        height: 100,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 6),
                              blurRadius: 4,
                              color: Colors.black38,
                            )
                          ],
                          color: Colors.purpleAccent[700],
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'After School Program',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/campPayment');
                    },
                    child: Container(
                      height: 100,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent[700],
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 5),
                            blurRadius: 4,
                            color: Colors.black38,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'ESTA Camp',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/adtService');
                    },
                    child: Container(
                      height: 100,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent[700],
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 5),
                            blurRadius: 4,
                            color: Colors.black38,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Additional service',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
