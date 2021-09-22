import 'package:academy_app/model/program.dart';
import 'package:academy_app/screens/programs/widgets/program_details.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProgramCard extends StatelessWidget {
  final ASP program;

  const ProgramCard({Key? key, required this.program}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 30),
      child: OpenContainer(
        closedElevation: 4,
        openElevation: 2,
        openShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        closedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        closedBuilder: (context, action) => buildProgramCard(context),
        openBuilder: (context, action) => ProgramDetails(program: program),
      ),
    );
  }

  Container buildProgramCard(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage(program.img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            top: 150,
            child: Column(
              children: [
                SizedBox(height: 5),
                Text(
                  program.name,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 2,
                          color: Colors.purpleAccent[700],
                          width: width,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 2,
                          width: width,
                          color: Colors.greenAccent[700],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding, vertical: 5),
                    child: Text(
                      program.descriptions,
                      style: TextStyle(
                        fontSize: 10.5,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
