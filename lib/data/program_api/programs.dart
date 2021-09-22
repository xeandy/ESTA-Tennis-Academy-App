import 'package:academy_app/model/program.dart';

class ASPPrograms {
  static const List<ASP> programs = [
    lvl1,
    lvl2,
    lvl3,
    lvl4,
    lvl5,
  ];
  static const lvl1 = ASP(
    name: 'Level 1: Pre-Rally',
    img: 'assets/images/level1.jpg',
    descriptions:
        '''This player is just starting to develop their motor skills. This program is designed to prepare them for the advancement to level one.''',
    id: 0,
    age: '3-5 years old.',
    equipProvided: 'Foam Balls and 36’ x 18’ custom court.',
    equipRequired:
        'Tennis racket 19 or 21 inches, any sport shoes, any sport clothes.',
    goal:
        '''This player is just starting to develop their motor skills. This program is designed to prepare them for the advancement to level one. With pre-rally, your child will focus on the ABC’s of Tennis Agility, Balance and Coordination which would be specialized for their size and age.''',
    session: '''
1 time per week \$60 / month + one-time \$40 registration free.
2 times per week \$120 / month + one-time \$40 registration free.
3 times per week \$170 / month + one-time \$40 registration free.''',
    time: '''
Mon, Wed, Fri: 4:30pm - 5:15pm.
Mon: 7:00pm - 7:45pm.''',
  );
  static const lvl2 = ASP(
    name: 'Level 2: Red Balls',
    img: 'assets/images/level2.jpg',
    descriptions:
        '''This player has never played tennis or received formal instruction. This program is designed to introduce tennis to kids that are new to the game.''',
    id: 1,
    age: '5-8 years old.',
    equipProvided: 'Red Balls and 36’ x 18’ custom court.',
    equipRequired:
        'Tennis racket 21 or 23 inches, tennis shoes, any sport clothes.',
    goal:
        '''This player has never played tennis or received formal instruction. This program is designed to introduce tennis to kids that are new to the game. The primary focus of Little Stars is making tennis fun! Refine the basic strokes: forehand, backhand, volley, and serve. Improve coordination, mobility, and footwork skills. Understand sportsmanship and fair play.''',
    session: '''
2 times per week \$185 / month + one-time \$40 registration free.
3 times per week \$240 / month + one-time \$40 registration free.
4 times per week \$300 / month + one-time \$40 registration free.''',
    time: '''
Mon - Fri: 4:30pm - 5:30pm.''',
  );
  static const lvl3 = ASP(
    name: 'Level 3: Orange Balls',
    img: 'assets/images/level3.jpg',
    descriptions:
        '''This player is developing consistency with all strokes and has some scoring and rules knowledge. Player must complete Level 1 and/or have instructor approval before entering this program.''',
    id: 2,
    age: '8-12 years old.',
    equipProvided: 'Orange Balls and 60’ x 27’ custom court',
    equipRequired: 'Tennis racket 25 inches, tennis shoes, any sport clothes.',
    goal:
        '''This player is developing consistency with all strokes and has some scoring and rules knowledge. Player must complete Level 1 and/or have instructor approval before entering this program.Enhance the basic strokes: forehand, backhand, and volley, serve variations, drop shot, and overhead smash. Improve balance, agility, and reaction time. Learn match scoring and prepare for singles and doubles play.''',
    session: '''
2 times per week \$195 / month.
3 times per week \$250 / month.
4 times per week \$320 / month.''',
    time: 'Mon - Fri: 5:30pm - 7pm.',
  );
  static const lvl4 = ASP(
    name: 'Level 4: Green Dot Balls',
    img: 'assets/images/level4.jpg',
    descriptions:
        '''This player has dependable strokes and may be ready to compete in USTA junior tournaments. Player must complete level 2 and/or have instructor approval before entering this program.''',
    id: 3,
    age: '10-14 years old. GREEN DOT BALLS',
    equipProvided: 'Green Dot Balls',
    equipRequired: 'Tennis racket 26 inches, tennis shoes, any sport clothes.',
    goal:
        '''This player has dependable strokes and may be ready to compete in USTA junior tournaments. Player must complete level 2 and/or have instructor approval before entering this program.Perfect tactical decisions, technique, and tournament fundamentals. Comprehend the difference between winning and losing without forgetting the importance of respect, responsibility and self-composure/confidence.''',
    session: '''
2 times per week \$235 / month
3 times per week \$295 / month
4 times per week \$370 / month
5 times per week \$450 / month''',
    time: 'Mon - Fri: 5:30pm - 7:00pm.',
  );

  static const lvl5 = ASP(
    name: 'Level 5: Yellow Balls',
    img: 'assets/images/level5.webp',
    descriptions:
        '''This player has dependable strokes and may be ready to compete in USTA junior tournaments. Player must complete level 2 and/or have instructor approval before entering this program.''',
    id: 3,
    age: '10-18 years old.',
    equipProvided: 'Yellow Balls',
    equipRequired:
        'Tennis racket 27 inches (full size), tennis shoes, tennis apparel.',
    goal:
        '''This player has dependable strokes and may be ready to compete in USTA junior tournaments. Player must complete level 2 and/or have instructor approval before entering this program.Perfect tactical decisions, technique, and tournament fundamentals. Comprehend the difference between winning and losing without forgetting the importance of respect, responsibility and self-composure/confidence.''',
    session: '''
2 times per week \$290 / month
3 times per week \$360 / month
4 times per week \$460 / month
5 times per week \$550 / month''',
    time: ' Mon - Fri: 7 - 9pm + Fri: 5:30 - 7:30pm.',
  );
}
