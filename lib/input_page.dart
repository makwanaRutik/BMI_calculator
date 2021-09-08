import 'package:bmi_callculator/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'round_icon_button.dart';
import 'child_icon_card.dart';

import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender currentGender;
  int cureentHeight = 180;
  int currentWeight = 60;
  int currentAge = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BIM CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Reusablecard(
                      colour: currentGender == Gender.male
                          ? activeCrardColor
                          : inactiveCardColor,
                      chidCard: IconChildCard(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      onPress: () {
                        setState(() {
                          currentGender = Gender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: Reusablecard(
                      colour: currentGender == Gender.female
                          ? activeCrardColor
                          : inactiveCardColor,
                      chidCard: IconChildCard(
                          icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                      onPress: () {
                        setState(() {
                          currentGender = Gender.female;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Reusablecard(
                chidCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: labelStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          cureentHeight.toString(),
                          style: kNumberStyle,
                        ),
                        Text(
                          'cm',
                          style: labelStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0xFF8D8E98),
                          thumbColor: Color(0xFFEB1555),
                          overlayColor:
                              Color(0x29EB1555), //from documentatio 29
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30)),
                      child: Slider(
                        min: 120,
                        max: 220,
                        value: cureentHeight.toDouble(),
                        onChanged: (double newHeight) {
                          setState(() {
                            cureentHeight = newHeight.toInt();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                colour: activeCrardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Reusablecard(
                      chidCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: labelStyle,
                          ),
                          Text(
                            currentWeight.toString(),
                            style: kNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onCurrentPressed: () {
                                  setState(() {
                                    currentWeight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onCurrentPressed: () {
                                  setState(() {
                                    currentWeight--;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                      colour: activeCrardColor,
                    ),
                  ),
                  Expanded(
                    child: Reusablecard(
                      chidCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: labelStyle,
                          ),
                          Text(
                            currentAge.toString(),
                            style: kNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onCurrentPressed: () {
                                  setState(() {
                                    currentAge--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onCurrentPressed: () {
                                  setState(() {
                                    currentAge--;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                      colour: activeCrardColor,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Resultpage();
                }));
              },
              child: Container(
                child: Text(
                  'Calculate',
                  style: labelStyle,
                ),
                color: buttonButtonColor,
                height: 80,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
