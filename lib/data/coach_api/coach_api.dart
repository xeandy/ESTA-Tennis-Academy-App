import 'package:academy_app/model/coach/coach.dart';

class CoachApi {
  static const coaches = [
    coach1,
    coach2,
    coach3,
    coach4,
    coach5,
  ];

  static const coach1 = Coach(
    coachImg: 'assets/images/eduard.jpeg',
    name: 'Eduard Khan',
    vocation: 'Founder of Esta, Tennis Coach',
  );
  static const coach2 = Coach(
    coachImg: 'assets/images/david.jpeg',
    name: 'David Barragan',
    vocation: 'Tennis Director',
  );
  static const coach3 = Coach(
    coachImg: 'assets/images/gabriela.jpeg',
    name: 'Gabriela Garces',
    vocation: 'Tennis Coach',
  );
  static const coach4 = Coach(
    coachImg: 'assets/images/Mavlonbek.jpeg',
    name: 'Mavlonbek Kuchkarov',
    vocation: 'Tennis Coach',
  );
  static const coach5 = Coach(
    coachImg: 'assets/images/Alex.jpg',
    name: 'Alex Ananchenkov',
    vocation: 'Fitness Coach',
  );
}
