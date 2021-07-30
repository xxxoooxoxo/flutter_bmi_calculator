import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(this.BMIResults, this.resultText, this.interpretation);

  final String BMIResults;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
                'Result',
                style: kTitleText,
              ),
              padding: EdgeInsets.fromLTRB(30, 1, 1, 30),
              alignment: Alignment.bottomLeft,
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40, left: 3, right: 3),
              child: ReusableCard(
                colour: kCardColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(45.0),
                      child: Text(
                        resultText,
                        style: kResultTextStyle,
                      ),
                    ),
                    Text(
                      BMIResults,
                      style: kBMITextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: kLabelTextStyle,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.copyright,
                            size: 15,
                            color: kUnselectedTextColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                              'Sabres Media, LLC',
                            style: kLabelTextStyle.copyWith(
                              fontSize: 13
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomBanner(
            'RE-CALCULATE',
            () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => InputPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
