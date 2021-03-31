import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          // FlatButton(
          //   child: Text('Restart Quiz'),
          //   textColor: Colors.blue,
          //   onPressed: resetHandler,
          // ),

          ElevatedButton(
            child: Text(
              'Restart Quiz',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue),
                backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            // textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
