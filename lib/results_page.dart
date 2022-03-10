import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

const bottomBarColor = Color(0xFFEB1555);
const bottomBarHeight = 80.0;

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {Key? key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation,
      this.getColor})
      : super(key: key);

  final String? bmiResult;
  final String? resultText;
  final String? interpretation;
  final Color? getColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xCC0A0E21),
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        backgroundColor: const Color(0xFF0A0E21),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(40.0),
            child: Text(
              'Your Result',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: const Color(0xFF1D1E33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    resultText!,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                      color: getColor,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    bmiResult!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 80.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text('Normal BMI range:',
                      style: TextStyle(
                        color: Color(0xFF8D8E98),
                        fontSize: 18.0,
                      )),
                  const SizedBox(height: 8.0),
                  const Text('18.5 - 25 kg/m2',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Text(
                      interpretation!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                  color: bottomBarColor,
                  borderRadius: BorderRadius.circular(28.0)),
              width: double.infinity,
              height: bottomBarHeight,
              child: const Center(
                child: Text(
                  'Re-calculate',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
