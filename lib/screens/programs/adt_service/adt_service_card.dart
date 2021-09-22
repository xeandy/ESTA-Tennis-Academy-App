import 'package:academy_app/screens/programs/adt_service/adt_service_details.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class AdtServiceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        Navigator.pushNamed(context, '/adtServiceDetails');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 15, vertical: kDefaultPadding),
        child: OpenContainer(
          closedElevation: 4,
          openElevation: 2,
          openShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          closedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          closedBuilder: (context, action) => adtServiceCard(),
          openBuilder: (context, action) => AdtServiceDetails(),
        ),
      ),
    );
  }

  Container adtServiceCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 6,
            color: Colors.black26,
          ),
        ],
      ),
      child: Stack(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage('assets/images/adtServiceImg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            top: 137,
            child: Center(
              child: Text(
                'Additional Service',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
