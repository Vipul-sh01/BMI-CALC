import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme/component/BottomButton.dart';
import 'package:theme/constants.dart';
import '../component/Reusable_card.dart';


class ResultPage extends StatelessWidget {
   ResultPage({required this.bmiResult, required this.resultText, required this.interPepation});

final String bmiResult;
final String resultText;
final String interPepation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title:const Text('BMI CALCULATER'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child:const Text(
                  'Your Result',
                  style: kTitleStyle,
                ),
              )
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultText,
                  ),
                  Text(
                    bmiResult,
                    style: kBMIText,
                  ),
                  Text(
                    interPepation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: (){
              Navigator.pop(context);
            },
              BottomTitle: 'RE-CALCULATE',
            ),
        ],
      ),
    );
  }
}
