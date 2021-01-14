import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var indexQuestion = 0;
  var questions = [
    'Dia de nascimento',
    'Mês de nascimento',
    'Ano de nascimento',
    'Cidade natal',
    'Animal de estimação',
    'Escola que estudou',
    'Primeira paixão',
    'Emprego dos sonhos',
    'Prefere carro ou bicicleta',
  ];
  void longPressed() {
    print('a long press detected');
  }

  @override
  Widget build(BuildContext context) {
//...

    //..
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: <Widget>[
            Text('Pergunta numero ' '$indexQuestion'),
            Text(questions[indexQuestion]),
            RaisedButton(
              child: Text('<<'),
              onPressed: () {
                if (indexQuestion > 0) {
                  setState(() {
                    indexQuestion--;
                    print('<<');
                  });
                }
              },
              onLongPress: longPressed,
            ),
            RaisedButton(
              child: Text('>>'),
              onPressed: () {
                if (indexQuestion + 1 < questions.length) {
                  setState(() {
                    indexQuestion++;
                    print('ok');
                    print(indexQuestion);
                  });
                }
              },
              onLongPress: longPressed,
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
