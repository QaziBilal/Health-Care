import 'package:flutter/material.dart';

class CustomCheckBoxList extends StatefulWidget {
  @override
  _CustomCheckBoxListState createState() => _CustomCheckBoxListState();
}

class _CustomCheckBoxListState extends State<CustomCheckBoxList> {
  List<bool> _checkedItems = [
    false,
    false,
    false,
    false,
    false,
    true,
    false,
    true,
    false,
    false
  ];

  List listofcalls = [
    "Chest Pain",
    "Welness Exam",
    "Vaccines",
    "Infections",
    "Sprains",
    "IV Hydration",
    "Detox",
    "CoVid Testing",
    "Flu",
    "Nausea and Achiness"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: _checkedItems.length,
      itemBuilder: (context, index) {
        return CheckboxListTile(
          title: Text(listofcalls[index]),
          value: _checkedItems[index],
          onChanged: (bool? value) {
            setState(() {
              _checkedItems[index] = value!;
            });
          },
        );
      },
    );

    // Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: [
    //     buildColumn(0, 5,listofcalls),
    //     buildColumn(5, 10,listofcalls),
    //   ],
    // );
  }

  Widget buildColumn(int startIndex, int endIndex, List callname) {
    return Column(
      children: _checkedItems
          .sublist(startIndex, endIndex)
          .asMap()
          .entries
          .map((entry) {
        int index = entry.key + startIndex;
        bool isChecked = entry.value;

        return ListTile(
          leading: Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                _checkedItems[index] = value!;
              });
            },
          ),
          title: Text(callname[index]),
        );
      }).toList(),
    );
  }
}
