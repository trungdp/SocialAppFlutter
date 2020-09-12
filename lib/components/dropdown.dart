import 'package:flutter/material.dart';

class Drowdown extends StatefulWidget {
  const Drowdown({Key key, this.text, this.list, this.value}) : super(key: key);

  @override
  _DrowdownState createState() => _DrowdownState();
  final String text;
  final List<Map> list;
  final value;
}

class _DrowdownState extends State<Drowdown> {
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    // selectedItem = widget.value;
    return Container(
        margin: EdgeInsets.only(top: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              selectedItem != null ? widget.text : '',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(160, 169, 179, 1),
                  fontSize: 12),
            ),
            DropdownButton(
              isDense: true,
              hint: selectedItem == null
                  ? Text(
                      widget.text,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(160, 169, 179, 1),
                      ),
                    )
                  : null,
              disabledHint: selectedItem == null
                  ? Text(
                      widget.list.firstWhere(
                          (item) => item['id'] == selectedItem)["name"],
                    )
                  : null,
              onChanged: (value) {
                setState(() {
                  selectedItem = value;
                });
              },
              value: selectedItem,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              isExpanded: true,
              items: widget.list.map((item) {
                return DropdownMenuItem(
                  value: item['id'],
                  child: Row(
                    children: <Widget>[
                      // item['icon'] != null ? item['icon'] : Text(''),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      Text(
                        item['name'],
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ));
  }
}

// class DropdownProblem extends StatefulWidget {
//   @override
//   _DropdownProblemState createState() => _DropdownProblemState();
// }

// class _DropdownProblemState extends State<DropdownProblem> {
//   bool _enabled = true;
//   int value;

//   List<Map> _items = [
//     {"value": 11, "text": 'asdf'},
//     {"value": 27, "text": 'qwert'},
//     {"value": 31, "text": 'yxcv'},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       width: size.width,
//       child: Column(
//         children: <Widget>[
//           Text(
//             'QUỐC GIA',
//           ),
//           DropdownButton(
//             disabledHint: value != null
//                 ? Text(
//                     _items.firstWhere((item) => item["value"] == value)["text"])
//                 : null,
//             items: _items
//                 .map((item) => DropdownMenuItem(
//                       value: item["value"],
//                       child: Text(item["text"]),
//                     ))
//                 .toList(),
//             onChanged: _enabled
//                 ? (v) => setState(() {
//                       value = v;
//                     })
//                 : null,
//             value: value,
//           )
//         ],
//       ),
//     );
//   }
// }
