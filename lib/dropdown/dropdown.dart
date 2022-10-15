import 'package:flutter/material.dart';

class DropdownCustom extends StatefulWidget {
  const DropdownCustom({super.key});

  @override
  State<DropdownCustom> createState() => _DropdownCustomState();
}

class _DropdownCustomState extends State<DropdownCustom> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          DropdownButtonHideUnderline(
            child: DropdownButton(
              isExpanded: true,
              alignment: Alignment.topRight,
              itemHeight: 60,
              items: items
                  .map((
                    item,
                  ) =>
                      DropdownMenuItem<String>(
                          value: item,
                          child: Container(
                            width: width,
                            height: height,
                            child: ListView(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.car_rental),
                                  title: Text(item),
                                ),
                              ],
                            ),
                          )))
                  .toList(),
              value: selectedValue,
              onChanged: (value) {
                setState(() {});
              },
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

String? selectedValue;
List<String> items = [
  'Item1',
  'Item2',
  'Item3',
  'Item4',
  'Item1',
  'Item2',
  'Item3',
  'Item4',
  'Item1',
  'Item2',
  'Item3',
  'Item4',
  'Item4',
  'Item1',
  'Item2',
  'Item3',
  'Item4',
];
