import 'package:flutter/material.dart';

import '../../../../constants.dart';

class CampCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        Navigator.pushNamed(context, '/campDetails');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: kDefaultPadding,
        ),
        child: buildCampCard(),
      ),
    );
  }

  Container buildCampCard() {
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
                image: AssetImage('assets/images/camp.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            top: 137,
            child: Center(
              child: Text(
                'ESTA Camp',
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
