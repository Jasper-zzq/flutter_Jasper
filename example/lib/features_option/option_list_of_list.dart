import 'package:flutter/material.dart';
import 'package:jasper_flutter_componment/main.dart';

class FeaturesOptionListOfList extends StatefulWidget {
  @override
  _FeaturesOptionListOfListState createState() =>
      _FeaturesOptionListOfListState();
}

class _FeaturesOptionListOfListState extends State<FeaturesOptionListOfList> {
  String _month = 'apr';

  List<List<String>> monthsOption = [
    ['jan', 'January'],
    ['feb', 'February'],
    ['mar', 'March'],
    ['apr', 'April'],
    ['may', 'May'],
    ['jun', 'June'],
    ['jul', 'July'],
    ['aug', 'August'],
    ['sep', 'September'],
    ['oct', 'October'],
    ['nov', 'November'],
    ['dec', 'December'],
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(height: 7),
        SmartSelect<String>.single(
            title: 'Month',
            value: _month,
            options: SmartSelectOption.listFrom<String, List<String>>(
              source: monthsOption,
              value: (index, item) => item[0],
              title: (index, item) => item[1],
            ),
            onChange: (val) => setState(() => _month = val)),
        Container(height: 7),
      ],
    );
  }
}
