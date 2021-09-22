import 'package:academy_app/data/program_api/programs.dart';
import 'package:academy_app/screens/programs/adt_service/adt_service_card.dart';
import 'package:academy_app/screens/programs/widgets/camp/camp_card.dart';
import 'package:academy_app/screens/programs/widgets/program_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Programs extends StatelessWidget {
  const Programs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: size.width,
            height: size.height / 2,
            decoration: BoxDecoration(
              color: Colors.purpleAccent[700],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
              ),
            ),
            child: CarouselSlider(
              items: ASPPrograms.programs
                  .map((e) => ProgramCard(program: e))
                  .toList(),
              options: CarouselOptions(
                enableInfiniteScroll: false,
                viewportFraction: 0.7,
                height: MediaQuery.of(context).size.height * 0.6,
                enlargeCenterPage: true,
              ),
            ),
          ),
          Expanded(
            child: CarouselSlider(
              items: [
                AdtServiceCard(),
                CampCard(),
              ],
              options: CarouselOptions(
                enableInfiniteScroll: false,
                viewportFraction: 0.85,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
