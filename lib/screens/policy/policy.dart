import 'package:academy_app/constants.dart';
import 'package:flutter/material.dart';

class Policies extends StatefulWidget {
  const Policies({Key? key}) : super(key: key);

  @override
  _PoliciesState createState() => _PoliciesState();
}

class _PoliciesState extends State<Policies> {
  bool checkBox = false;
  bool checkBox1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Policies',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Muli",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Tennis Program Policies',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                '''Our philosophy is very simple. Discipline, respect and hard work are the foundations for success on and off the court. We want to help every player who is attending ESTA Tennis Academy to develop these skills, whether their goal is to play professional, for a high school or college team or just to enjoy the sport. These policies are designed to provide a safe, fun and productive environment and help the players to get the best possible instruction from our professional staff at every practice.''',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Text(
                'Punctuality & Behavior',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: 'Show up on time. ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text:
                          'Please make sure the players are at least 5 minutes early for their classes. Showing up late can disrupt the rest of the group and often means the late player will miss the cardio warm-up and stretching sessions that are important to help get them ready for drills and the more intense fitness portions of the class. Parents: ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text: 'PLEASE ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text:
                          'pick up your child at the tennis courts at the end of practice! Do not wait in the parking lot. It could be a safety issue with supervision and crossing the street at night.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: 'Be attentive and respectful to the instructors, ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text:
                          'staff and other players. Players that are inattentive or goofing off can easily disrupt the entire class. We absolutely want the kids to have fun on the court, but in a manner that allows the instructor to focus his/her attention on the whole class.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: 'No food, gum or candy ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text:
                          'allowed on court. Only granola bars, fruits and sports drinks.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: 'No cell phone use ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text:
                          'during practice. Please put them away before entering the courts.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: 'Keep the conversations to a minimum. ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text:
                          'Players must stay focused on the coach and follow directions. No inappropriate language. We know many of the kids at this age are just discovering the use of inappropriate words and conversations, often in multiple languages and this is ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text: 'NOT ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text: 'welcome on the court, in any language.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text:
                          'We kindly ask parents to stay outside of the tennis courts ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text:
                          '(Exception: Private lessons and Level 1 Red ball group lessons). Chairs and benches are available throughout resort area to use anytime from behind the fences.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text:
                          'Nobody leaves practice until all balls are picked up. ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text:
                          'Also the balls over the fences. Do not recover balls which bounce into the lakes or pools.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Text(
                'Violations & Suspensions',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  text:
                      'Our coaches will warn players right away when they are violating the policy.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    height: 1.4,
                    fontFamily: "Muli",
                  ),
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text:
                          'Players with repeated incidents will be asked to sit outside of the court until the completion of the class. This is suspension from the class and 1 (one) warning.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text:
                          'Players that have 3 (three) warnings during a 3 (three) month period will be permanently ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text: 'dismissed ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text:
                          'from the program for 1 (one) calendar month with no refunds.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Text(
                'Ticket Program & The ESTA Store',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text:
                          'Coaches will compliment players with tickets according to their performance during tennis/fitness for good sportsmanship, winning a game, showing improvement, generosity, positive actions, ect. However, if players do not accomplish tasks or are disrespectful, coaches will confiscate tickets. The number of tickets may vary, according to the situation. ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text: '20 tickets for 1st place in a USTA tournament.',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text:
                          'Players must always keep tickets in a zip lock/waterproof bag in their tennis bags.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Muli",
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: 'Once every two months, we promote the ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text: 'ESTA Store ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text:
                          'where players can exchange tickets for valuable prizes. ESTA Store accepts tickets with the ESTA stamp only. Tickets have no cash value. ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                      ),
                    ),
                    TextSpan(
                      text:
                          'No refund or replacement for lost or stolen tickets.',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Text(
                'Missed classes & Attendance',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text:
                          'Make-up classes will be scheduled because of health issues and only with a medical report (valid doctor’s note with contact info). No other reasons will be accepted.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Muli",
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: 'No make-up classes ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text:
                          'due to school events or projects, homework, other appointments, leisure travels, personal or no reason no-show.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text:
                          'All make-up classes must be completed within 3 months from the date of the missed class. No classes will be transferred to longer than 3 months unless approved by staff.',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text:
                          'It is mandatory to attend the classes on the days, which you chose in the beginning of the month. You can change your practice days only in the beginning of every month.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Text(
                'Weather & Make–Up Class',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: 'Weather update on WHATSAPP: ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text:
                          'Please download Whatsapp on your mobile device for important information and updates. Check your Whatsapp group chat for the weather update and class information 40 minutes before actual practice time and you will get the most accurate information about status of the practice.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Muli",
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: 'Do not call or text coaches ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text:
                          'if you see bad weather coming. Check your WhatsApp. If nothing is posted in WhatsApp, it means the class is active.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text:
                          'If rain starts: Tennis class will be cancelled and we will schedule a make-up class.',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Text(
                'Dress Code & Equipment',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "Make sure all players have the proper equipment and outfit for playing tennis. If you aren't sure what they need please ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Muli",
                        height: 1.4,
                      ),
                    ),
                    TextSpan(
                      text: "ask our coaches before you buy anything, ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text: "we will be happy to help.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: 'ESTA coaches have the right to ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text: 'suspend players ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                      ),
                    ),
                    TextSpan(
                      text: 'from practice if ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text: 'shoes ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text: 'are not specifically for tennis.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text:
                          'Running, basketball or casual shoes are not tennis shoes. These shoes have softer soles and no ankle support. Players are much more likely to roll or twist an ankle in running shoes. That would cause your child to miss weeks/months of practice with no refund because of violation of our tennis shoe policy.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: 'A proper tennis ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text: 'racket ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: "Muli",
                        height: 1.4,
                      ),
                    ),
                    TextSpan(
                      text: 'for their age and ability. A ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text: 'hat ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontFamily: "Muli",
                        height: 1.4,
                      ),
                    ),
                    TextSpan(
                      text: 'for hair and for sun protection.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text:
                          'Tennis apparel: loose fitting athletic shorts with pockets for boys, athletic skirts, shorts or dresses for girls.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Muli",
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text:
                          'Sunscreen during the hotter times of the year when we are out in the sun.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: 'A large water bottle or thermos ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text:
                          'for water with ice is highly recommended. Many players bring small water bottles and need to refill them shortly into practice. This can be disruptive to the group, and since the drinking fountain is not near the courts, it also cuts into their practice time.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Text(
                'Holidays',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Classes which fall on Labor day, Thanksgiving day and Christmas day, will be cancelled with no make-up class. We will have classes as usual on all other holidays during the school year.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Text(
                'Fees',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: 'There is a one-time \$40 ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text: ' registration fee ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text:
                          "which is mandatory for all tennis programs. The payment of a new registration fee of \$40 is required if a player leaves the tennis program for one or more months (Unless provided a valid doctor’s note with contact info). Only exceptions: Summer Break and Holiday Break (Christmas/New Year).",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text:
                          'Membership enrollment \$249, optional, annually. Check benefits in our brochure.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Text(
                'Payment Policy & Referrals',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text:
                          'Payment is due monthly from the 1st to 5th day of every month.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text:
                          'A late fee of \$40 will apply if payment is received after this time frame.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text:
                          'Cash, personal checks and credit cards are accepted with credit cards being preferred.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Muli",
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text:
                          'No credits or refunds for missed or uncompleted classes.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Muli",
                        height: 1.4,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textScaleFactor: 1.1,
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.radio_button_checked,
                        size: 16,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: 'ESTA offers a ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text: '\$100 visa gift card ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                    TextSpan(
                      text:
                          'for our Parent Referral Program. This reward applies for each new player you bring to ESTA who signs up for group classes for at least one full month. So make sure you tell your friends about us and let them know that the first group tryout class is FREE!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.4,
                        fontFamily: "Muli",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              CheckboxListTile(
                activeColor: Colors.purpleAccent[700],
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: EdgeInsets.all(0),
                value: checkBox1,
                onChanged: (value) {
                  setState(() {
                    checkBox1 = value!;
                  });
                },
                title: Text(
                  'I have read and agree to all of the ESTA Policies, terms and conditions.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'MyFlutterApp',
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Divider(),
              SizedBox(height: kDefaultPadding / 2),
              Text(
                'ESTA Tennis Academy Parental Media Consent Form for Minors',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Text(
                'We recognize the need to ensure the welfare and safety of all young people taking part in any activity associated with our tennis academy.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'As your child will be taking part in our tennis academy, we would like to ask for your consent to take photographs/videos during training sessions, and other ESTA events that may contain images of your child. These images may be used as:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '	•	a record of the activity or the event',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '	•	publicity material for further activities or events on our ESTA Social media platforms/leaflets/websites/magazines',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '	•	illustrations of the activities or events in published articles',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'We will take all steps to ensure these images are used solely for the purposes they are intended. If you become aware that these images are being used inappropriately you should inform us immediately.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              CheckboxListTile(
                activeColor: Colors.purpleAccent[700],
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: EdgeInsets.all(0),
                value: checkBox,
                onChanged: (value) {
                  setState(() {
                    checkBox = value!;
                  });
                },
                title: Text(
                  'I have read and agree to all of the ESTA Policies, terms and conditions.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'MyFlutterApp',
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: checkBox & checkBox1 == false
                        ? Colors.grey
                        : Colors.purpleAccent[700],
                    minimumSize: Size(200, 0),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(22),
                      ),
                    ),
                  ),
                  onPressed: checkBox & checkBox1 == false
                      ? null
                      : () {
                          Navigator.pushNamed(context, '/application');
                        },
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: kDefaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
